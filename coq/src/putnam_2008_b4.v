Require Import Nat ZArith Reals Coquelicot.Coquelicot.
Theorem putnam_2008_b4
    (p: nat)
    (hp : Znumtheory.prime (Z.of_nat p))
    (c: nat -> Z)
    (n: nat)
    (h : nat -> Z := fun x => floor (sum_n (fun i => IZR (c i) * INR (x ^ i)) n))
    (hh : forall (i j: nat), i <> j /\ and (le 0 i) (le i (p ^ 2 - 1)) /\ and (le 0 j) (le j (p ^ 2 - 1)) -> Z.modulo (h i) (Z.of_nat (p ^ 2)) <> Z.modulo (h j) (Z.of_nat (p ^ 2)))
    : (forall (i j: nat), i <> j /\ and (le 0 i) (le i (p ^ 3 - 1)) /\ and (le 0 j) (le j (p ^ 3 - 1)) -> Z.modulo (h i) (Z.of_nat (p ^ 3)) <> Z.modulo (h j) (Z.of_nat (p ^ 3))).
Proof. Admitted.
