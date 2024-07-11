Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1983_b4
    (m: nat)
    (f : R -> R := fun n => n + IZR (floor (sqrt n)))
    (A := fix a (n: nat) :=
        match n with
        | O => INR m
        | S n' => f (a n')
    end)
    : exists (i: nat) (q: Z), A i = IZR (floor (A i)) /\ floor (A i) = Z.mul q q.
Proof. Admitted.
