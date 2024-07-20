Require Import Basics Factorial Reals Coquelicot.Series.
Open Scope R.
Theorem putnam_1975_a5 
    (f0 : R -> R := fun x => Rpower (exp 1) x)
    (composen := fix compose_n {A: Type} (f : A -> A) (n : nat) :=
        match n with
        | O => fun x => x
        | S n' => compose f (compose_n f n')
    end)
    : Series (fun n => ((composen f0 n) 1)/(INR (fact n))) = Rpower (exp 1) (exp 1).
Proof. Admitted.
