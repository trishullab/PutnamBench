Require Import Nat Reals Coquelicot.Coquelicot.
Theorem putnam_2008_b4
    (p: nat)
    (hp : Znumtheory.prime (Z.of_nat p))
    (c: nat -> Z)
    (n: nat)
    (h : nat -> nat := fun x => Z.to_nat (floor (sum_n (fun i => IZR (c i) * INR (x ^ i)) (n + 1))))
    : (forall (i j: nat), i <> j /\ and (le 0 i) (le i (p ^ 2 - 1)) /\ and (le 0 j) (le j (p ^ 2 - 1)) -> (h i) mod (p ^ 2) <> h j mod p ^ 2) ->
    (forall (i j: nat), i <> j /\ and (le 0 i) (le i (p ^ 3 - 1)) /\ and (le 0 j) (le j (p ^ 3 - 1)) -> h i mod p ^ 2 <> h j mod p ^ 3).
Proof. Admitted.
