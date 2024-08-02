Require Import ZArith Reals Coquelicot.Coquelicot.
Open Scope Z_scope.
Theorem putnam_1983_b4
    (m : Z)
    (hm : m > 0)
    (f : Z -> Z := fun n => n + floor (sqrt (IZR n)))
    (A := fix a (n: nat) :=
        match n with
        | O => m
        | S n' => f (a n')
    end)
    : exists (i : nat) (s : Z), A i = s^2.
Proof. Admitted.
