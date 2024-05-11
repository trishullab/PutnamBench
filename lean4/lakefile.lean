import Lake
open Lake DSL

package «putnam» where
  -- add package configuration options here
  require mathlib from git "https://github.com/leanprover-community/mathlib4" @ "v4.7.0-rc2"

@[default_target]
lean_lib «putnam» {
}
