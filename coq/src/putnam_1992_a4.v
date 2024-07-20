Require Import Nat Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1992_a4_solution (k: nat) := if odd k then 0 else pow (-1) (k/2).
Theorem putnam_1992_a4
    (f : R -> R := fun n => (pow (1 / n) 2) / ((pow (1 / n) 2) + 1))
    (df_0 : nat -> R := fun k => (Derive_n f k) 0)
    : forall (k: nat), gt k 0 -> df_0 k = putnam_1992_a4_solution k.
Proof. Admitted.
