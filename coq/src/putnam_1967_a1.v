Require Import Reals Rtrigo_def Coquelicot.Hierarchy.
(* uses (nat -> R) instead of ('I_n -> R) *)
Theorem putnam_1967_a1
    (n : nat)
    (a : nat -> R)
    (f : R -> R := fun x : R => sum_n_m (fun i => a i * sin (INR i * x)) 1 n)
    (npos : (n > 0)%nat)
    (flesin : (forall x : R, Rabs (f x) <= Rabs (sin x)))
    : (Rabs (sum_n_m (fun i => INR i * a i) 1 n) <= 1).
Proof. Admitted.