Require Import Ensembles Nat Coquelicot.Coquelicot.
Definition putnam_1985_a4_solution := fun k => k = 87.
Theorem putnam_1985_a4
    (a : nat -> nat := fix a (n: nat) :=
        match n with
        | O => 3
        | S n' => 3 ^ (a n')
    end)
    : let E: Ensemble nat := fun k => k < 100 /\ forall (n: nat), n < 100 -> exists (i: nat), ge i n /\ a i mod 100 = k in
    E = putnam_1985_a4_solution.
Proof. Admitted.
