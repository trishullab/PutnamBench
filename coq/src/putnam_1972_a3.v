Require Import Reals Ensembles. From Coquelicot Require Import Hierarchy Lim_seq.
Open Scope R.
(* uses R -> R instead of [0, 1] -> R *)
Definition putnam_1972_a3_solution : Ensemble (R -> R) := fun f : R -> R => exists A B : R, forall x : R, 0 <= x <= 1 -> f x = A * x + B.
Theorem putnam_1972_a3
    (climit_exists : (nat -> R) -> Prop := fun x : nat -> R => ex_lim_seq (fun n : nat => sum_n x (n - 1) / INR n))
    (supercontinuous : (R -> R) -> Prop := fun f : R -> R => forall x : nat -> R, (forall i : nat, 0 <= x i <= 1) -> climit_exists x -> climit_exists (fun i : nat => f (x i)))
    : (supercontinuous = putnam_1972_a3_solution).
Proof. Admitted.