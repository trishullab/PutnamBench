Require Import Nat ZArith Reals Coquelicot.Coquelicot.
Open Scope Z.
Definition putnam_2013_b1_solution := IZR (-1).
Theorem putnam_2013_b1
    (c: nat -> Z)
    (hc : (forall (i: nat), c 1%nat = 1 /\ c i = if (even i) then c (div i 2) else (-1) ^ (Z.of_nat ((i - 1) / 2)) * c (div (pred i) 2)))
    : sum_n (fun i => IZR (c i * c (add i 2))) 2013 = putnam_2013_b1_solution.
Proof. Admitted.
