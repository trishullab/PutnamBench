Require Import Nat Reals Coquelicot.Coquelicot.
Theorem putnam_2004_b1
    (c: nat -> Z)
    (n: nat)
    (P : R -> R := fun x => sum_n (fun i => IZR (c i) * x ^ i) (n + 1))
    : forall (p q: Z), P (IZR (p / q)) = 0 -> let r := IZR (p / q) in
    forall (i: nat), and (le 1 i) (le i n) -> sum_n (fun j => IZR (c (sub n j)) * r ^ (i - j)) i = IZR (floor (sum_n (fun j => IZR (c (sub n j)) * r ^ (i - j)) i)). 
Proof. Admitted.
