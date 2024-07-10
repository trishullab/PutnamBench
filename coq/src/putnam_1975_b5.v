Require Import Factorial Reals Coquelicot.Coquelicot.
Theorem putnam_1975_b5
    (f : nat -> nat -> R := fix f (n x: nat) :=
        match n with 
        | O => exp (INR x)
        | S n' => INR x * f n' x
    end)
    : Series (fun n => f n 1%nat / INR (fact n)) = exp (exp 1).
Proof. Admitted.
