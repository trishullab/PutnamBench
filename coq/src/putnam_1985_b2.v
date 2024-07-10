Require Import Nat List ZArith Znumtheory.
Open Scope nat_scope.
Definition putnam_1985_b2_solution := repeat 101 99.
Theorem putnam_1985_b2
    (P := fix p (n x: nat) : nat :=
        match (n,x) with
        | (O, x) => 1
        | (S n', x) => (n' + 1) * p n' (x + 1)
    end) 
    (val := P 100 1)
    : exists (l: list nat), forall (x: nat), (In x l -> prime (Z.of_nat x)) ->
    fold_left mul l 1 = val <-> l = putnam_1985_b2_solution.
Proof. Admitted.
