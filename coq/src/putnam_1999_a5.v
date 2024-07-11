Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_1999_a5
    (p : (nat -> R) -> R -> R := fun a x => sum_n (fun i => a i * x ^ i) 2000)
    : forall (a: nat -> R), exists (c: R), Rabs (p a 0) <= c * RInt (fun  x => Rabs (p a x)) (-1) 1.
Proof. Admitted.
