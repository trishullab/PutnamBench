Require Import Factorial Reals Coquelicot.Coquelicot.
Definition putnam_2008_b2_solution := -1.
Theorem putnam_2008_b2
    (f := fix F (n: nat) (x: R) :=
        match n with
        | O => ln x
        | S n' => RInt (fun t => F n' t) 0 x
    end)
    : Lim_seq (fun n => INR (fact n) * f n 1 / ln (INR n)) = putnam_2008_b2_solution. 
Proof. Admitted.
