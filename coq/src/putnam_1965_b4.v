Require Import Reals Coquelicot.Hierarchy Ensembles.
Definition putnam_1965_b4_solution : (((R -> R) -> R -> R) * ((R -> R) -> R -> R)) * ((Ensemble R) * (R -> R)) := (((fun (h : R -> R) (x : R) => h x + x), (fun (h : R -> R) (x : R) => h x + 1)), ((fun x : R => x >= 0), sqrt)).
Theorem putnam_1965_b4
    (f : nat -> R -> R)
    (hf : forall n : nat, gt n 0 -> f n = (fun x : R => (sum_n (fun i : nat => (C n (2 * i)) * x ^ i) (n / 2)) / (sum_n (fun i : nat => (C n (2 * i + 1)) * x ^ i) ((n - 1) / 2))))
    : let '((p, q), (s, g)) := putnam_1965_b4_solution in (forall n : nat, gt n 0 -> f (Nat.add n 1) = (fun x : R => p (f n) x / q (f n) x) /\ s = (fun x : R => exists L : R, filterlim (fun n : nat => f n x) eventually (locally L)) /\ (forall x : R, s x -> filterlim (fun n : nat => f n x) eventually (locally (g x)))).
Proof. Admitted.
