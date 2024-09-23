import Mathlib.Lean.CoreM
import Mathlib.Util.GetAllModules
import Batteries.Lean.Util.Path
import Lean.Elab.Frontend
import Batteries.Data.String.Matcher


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

/-- Return true if the entry is ok -/
def checkEntry (entry : InformalJsonEntry) : CoreM EntryResult := do
  let doc? := (← Lean.findDocString? (← getEnv) entry.problem_name).map String.trim
  if doc? = some entry.informal_statement.trim then
    return .docMatching
  else if let .some doc := doc? then
    IO.eprintln <|
      f!"Doc for {entry.problem_name}:\
      \n{doc}\
      \ndoesn't match the content of `informal/putnam.json`:\
      \n{entry.informal_statement.trim}"
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
