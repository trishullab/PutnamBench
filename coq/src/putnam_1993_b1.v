Require Import Reals.
Open Scope R.
Definition putnam_1993_b1_solution : nat := 3987.
Theorem putnam_1993_b1
    (cond : nat -> Prop := fun n => gt n 0 /\ forall (m: nat), and (lt 0 m) (lt m 1993) -> exists (k: nat), INR m / 1993 < INR k / INR n < INR (m + 1) / 1994)
    : cond putnam_1993_b1_solution /\ forall (n: nat), cond n -> ge n putnam_1993_b1_solution.
Proof. Admitted.
