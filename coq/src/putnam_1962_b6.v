Require Import Reals Ensembles Coquelicot.Hierarchy Finite_sets.
Theorem putnam_1962_b6
    (n : nat)
    (a b : nat -> R)
    (xs : Ensemble R)
    (f : R -> R := (fun x : R => sum_n (fun k : nat => a k * sin (INR k * x) + b k * cos (INR k * x)) n))
    (hf1 : forall x : R, (0 <= x /\ x <= 2 * PI) -> abs (f x) <= 1)
    (hxs : cardinal R xs (2 * n) /\ (forall x : R, xs x -> 0 <= x /\ x < 2 * PI))
    (hfxs : forall x : R, xs x -> abs (f x) = 1)
    : (~exists c : R, f = (fun x : R => c)) -> (exists a : R, f = (fun x : R => cos (INR n * x + a))).
Proof. Admitted.
