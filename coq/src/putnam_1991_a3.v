Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition poly (coeff : nat -> R) (deg : nat) : R -> R := fun x : R => sum_n (fun i => coeff i * x ^ i) deg.
Definition putnam_1991_a3_solution (coeff: nat -> R) : Prop := (forall n : nat, gt n 2 -> coeff n = 0) /\ exists (r1 r2 : R), r1 <> r2 /\ poly coeff 2 r1 = 0 /\ poly coeff 2 r2 = 0.
Theorem putnam_1991_a3
    (coeff : nat -> R)
    (n : nat)
    (hn : coeff n <> 0 /\ forall m : nat, gt m n -> coeff m = 0)
    (hge : ge n 2)
    : (exists (r: nat -> R), (forall i : nat, lt i (n - 1) -> r i < r (S i)) /\
    (forall i : nat, lt i n -> poly coeff n (r i) = 0) /\ 
    (forall i : nat, lt i (n - 1) -> (Derive (poly coeff n)) ((r i + r (S i)) / 2) = 0)) <->
    putnam_1991_a3_solution coeff.
Proof. Admitted.
