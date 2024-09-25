From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals exp sequences topology normedtype.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Theorem putnam_1970_b5_solution
    (ramp : int -> (R -> R) := fun (n : int) => (fun (x : R) => if x <= -n%:~R then -n%:~R else (if -n%:~R <= x <= n%:~R then x else n%:~R)))
    (F : R -> R)
    : continuous F <-> (forall n : nat, continuous (ramp (n%:Z) \o F)).
Proof. Admitted.