Require Import Ensembles Finite_sets Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1990_b3
    (Mmult_n :=
    fix Mmult_n {T : Ring} (A : matrix 2 2) (p : nat) :=
        match p with
        | O => A
        | S p' => @Mmult T 2 2 2 A (Mmult_n A p')
    end)
    (E : Ensemble (matrix 2 2) := fun (A: matrix 2 2) => 
        forall (i j: nat), and (le 0 i) (lt i 2) /\ and (le 0 j) (lt j 2) -> 
        (coeff_mat 0 A i j) <= 200 /\ exists (m: nat), coeff_mat 0 A i j = INR m ^ 2)
    : exists (sz : nat), gt sz 50387 /\ cardinal (matrix 2 2) E sz -> exists (A B: matrix 2 2), E A /\ E B /\ Mmult A B = Mmult B A.
Proof. Admitted.
