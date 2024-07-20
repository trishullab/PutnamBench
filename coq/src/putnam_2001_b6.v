Require Import Nat Reals Coquelicot.Coquelicot.
Definition putnam_2001_b6_solution := True.
Theorem putnam_2001_b6
    (a: nat -> R)
    (ha : forall (i j: nat), lt i j -> a i < a j) 
    : Lim_seq (fun n => a n / INR n) = 0 -> forall (n: nat), exists (m: nat), gt m n /\ forall (i: nat), and (le 1 i) (le i (n - 1)) -> a (sub n i) + a (add n i) < 2 * a n /\ a (sub m i) + a (add m i) < 2 * a m.
Proof. Admitted.
