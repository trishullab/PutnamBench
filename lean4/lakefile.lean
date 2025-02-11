import Lake
open Lake DSL

package «putnam_competition» where
  -- add package configuration options here
  leanOptions := #[
    ⟨`autoImplicit, false⟩
  ]
require mathlib from git "https://github.com/leanprover-community/mathlib4" @ "v4.15.0"

@[default_target]
lean_lib «putnam_competition_test» where
  globs := #[.submodules `src_with_solns]

lean_lib «putnam_competition_sorries» where
  globs := #[.submodules `src_with_sorries]

lean_lib «putnam_competition_solution» where
  globs := #[.submodules `src_with_sorries_replaced]

lean_exe «check_docstrings» where
  root := `check_docstrings
  supportInterpreter := true
