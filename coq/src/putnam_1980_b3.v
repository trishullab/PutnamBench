Require Import Reals.
Open Scope R.
Definition putnam_1980_b3_solution (b: R) := b >= 3.
Theorem putnam_1980_b3
    (b: R)
    (A := fix a (n: nat) : R :=
        match n with
        | O => b
        | S n' => 2 * a n' - INR (n' * n') 
    end)
    : forall (n: nat), A n > 0 <-> putnam_1980_b3_solution b.
Proof. Admitted.
