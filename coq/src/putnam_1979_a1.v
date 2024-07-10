Require Import Nat List.
Definition putnam_1979_a1_solution := 2 :: repeat 3 659.
Theorem putnam_1979_a1
    (l : list nat)
    (hl : fold_left add l 0 = 1979)
    (hlmax : forall m: list nat, fold_left add m 0 = 1979 /\ fold_left mul l 1 >= fold_left mul m 1)
    : l = putnam_1979_a1_solution. 
Proof. Admitted.
