Require Import Reals Coquelicot.Lim_seq.
Open Scope R.
Definition putnam_2012_b4_solution := True.
Theorem putnam_2012_b4
    (A := fix a (n: nat) : R :=
        match n with
        | O => 1
        | S n' => a n' + Rpower (exp 1) ((-1) * a n')
    end)
    (B : nat -> R := fun n => A n - ln (INR n))
    : ex_lim_seq B <-> putnam_2012_b4_solution.
Proof. Admitted.
End putnam_2012_b4. 