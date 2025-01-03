import Mathlib.Lean.CoreM
import Mathlib.Util.GetAllModules
import Lean.Elab.Frontend
import Batteries.Data.String.Matcher
import Lean.Util.SearchPath


open Lean Elab Command Frontend

def allModules : IO (Array Name) := do
  let mut ret := #[]
  for p in ← System.FilePath.walkDir "src" do
    ret := ret.push (← moduleNameOfFileName p none)
  return ret

structure InformalJsonEntry where
  problem_name : Name
  informal_statement : String
  informal_solution : Option String
  tags : List String
deriving Lean.ToJson, Lean.FromJson

def getModuleNameFor? (env : Environment) (nm : Name) : Option Name :=
  env.getModuleIdxFor? nm >>= fun i => env.header.moduleNames[i.toNat]?

inductive EntryResult
  | docMatching
  | docMismatching
  | docMissing
  | missing

/-- Emit a github error that will appear as an annotation in the diff view.

This is adapted from `mathlib3/scripts/detect_errors.py`. -/
def emitGithubError (msg : String) (file : Option System.FilePath) (pos : Option Position) :
    IO Unit := do
  let mut parts := #[]
  if let .some file := file then
    parts := parts.push s!"file={file}"
  if let .some pos := pos then
    parts := parts.push s!"line={pos.line}"
    parts := parts.push s!"col={pos.column}"
  IO.eprintln s!"::error {",".intercalate parts.toList}::{encodeMsg msg}"
where
  encodeMsg (msg : String) : String :=
    msg.replace "%" "%25" |>.replace "\r" "%0D" |>.replace "\n" "%0A"

def getSource (n : Name) : CoreM <| Option (Name × DeclarationRange) := do
  let .some ranges ← Lean.findDeclarationRanges? n | return none
  let .some mod ← Lean.findModuleOf? n | return none
  return some (mod, ranges.range)

/-- Return true if the entry is ok -/
def checkEntry (entry : InformalJsonEntry) : CoreM EntryResult := do
  let doc? := (← Lean.findDocString? (← getEnv) entry.problem_name).map String.trim
  if doc? = some entry.informal_statement.trim then
    return .docMatching
  else if let .some doc := doc? then
    let srcInfo ← getSource entry.problem_name
    emitGithubError
      s!"The docstring for {entry.problem_name} is not in sync with the version in `informal/putnam.json`.\
      \nPlease either change this docstring or modify the JSON file. Be careful to escape LaTeX when writing JSON.\
      \nThe JSON file currently contains:\
      \n\
      \n{entry.informal_statement.trim}\
      \n\
      \nWhile the docstring contains:
      \n\
      \n{doc}\n"
      -- github paths have to be absolute, so include the lean4
      (some <| "lean4" / "src" / s!"{entry.problem_name}.lean")
      (srcInfo.map (·.2.pos))

    return .docMismatching
  else
    try
      discard <| getConstInfo entry.problem_name
    catch _ =>
      IO.eprintln <| s!"No formalization of {entry.problem_name}"
      return .missing
    IO.eprintln <|
      s!"Doc for {entry.problem_name} is missing, adding one. Please rerun `lake build`."
    addDocstring
    return .docMissing
where
  addDocstring : CoreM Unit := do
    -- hack, but good enough
    let fname : System.FilePath := "src" / s!"{entry.problem_name.toString}.lean"
    let mut raw ← IO.FS.readFile fname
    let .some thm := raw.findSubstr? "\ntheorem" | throwError "Cannot find theorem command"
    raw :=
      raw.extract 0 thm.startPos
      ++ "\n/--\n" ++ entry.informal_statement.trim ++ "\n-/"
      ++ raw.extract thm.startPos raw.endPos
    IO.FS.writeFile fname raw

def main : IO UInt32 := do
  searchPathRef.set compile_time_search_path%
  let json ← IO.ofExcept <| Lean.Json.parse <| ← IO.FS.readFile (".." / "informal" / "putnam.json")
  let data : Array InformalJsonEntry ← IO.ofExcept <| fromJson? json
  CoreM.withImportModules (← allModules) do
    let mut any_errors := false
    for entry in data do
      match ← checkEntry entry with
      | .docMissing | .docMismatching =>
        any_errors := true
      | .missing | .docMatching =>
        pure ()
    return bif any_errors then 1 else 0
