Require Import List Nat Reals ZArith.
Open Scope Z.
Theorem putnam_2000_b1 
    (a b c: nat -> Z)
    (n: nat)
    (habc : forall (j: nat), and (le 1 j) (le j n) -> Z.odd (a j) = true \/ Z.odd (b j) = true \/ Z.odd (c j) = true)
    : exists (l: list nat), ge (length l) (4 * n / 7) /\ forall (j: nat), In j l -> and (le 1 j) (le j n)
    -> exists (r s t: Z), Z.odd (Z.add (Z.add (Z.mul r (a j)) (Z.mul s (b j))) (Z.mul t (c j))) = true.
Proof. Admitted.
