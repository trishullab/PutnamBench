Require Import Nat List Reals Coquelicot.Coquelicot ZArith Znumtheory.
Open Scope R.
Definition putnam_1985_b2_solution := repeat 101%nat 99.
Theorem putnam_1985_b2
    (f : nat -> R -> R)
    (polyf : forall n : nat, exists p : nat -> R, exists deg : nat, f n = fun x : R => sum_n (fun m : nat => (p m) * x ^ m) deg)
    (hf0x : f O = fun x => 1)
    (hfn0 : forall n : nat, ge n 1 -> f n 0 = 0)
    (hfderiv : forall n : nat, forall x : R, Derive (f (S n)) x = (INR n + 1) * f n (x + 1))
    : (forall n : nat, In n putnam_1985_b2_solution -> prime (Z.of_nat n)) /\ exists a : nat, INR a = f 100%nat 1 /\ fold_left mul putnam_1985_b2_solution 1%nat = a.
Proof. Admitted.