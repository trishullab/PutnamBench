import Lake
open Lake DSL

package «putnam» where
  -- add package configuration options here
  leanOptions := #[
    ⟨`autoImplicit, false⟩
  ]
require mathlib from git "https://github.com/leanprover-community/mathlib4" @ "v4.10.0"

@[default_target]
lean_lib «putnam» where
  globs := #[.submodules `src]

lean_lib «putnam_with_solutions» where
  globs := #[.submodules `solutions_replaced_new]
