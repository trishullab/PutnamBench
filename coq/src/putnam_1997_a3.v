Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1997_a3_solution : R := sqrt (exp 1).
Theorem putnam_1997_a3
    (evenfact := fix even_fact (n : nat) : R :=
        match n with
        | O => 1 
        | S n' => (2 * INR n) * even_fact n'
    end)
    (evenfactsqr := fix even_fact_sqr (n : nat) : R :=
        match n with
        | O => 1 
        | S n' => pow (2 * INR n) 2 * even_fact_sqr n'
    end)
    (f : R -> R := fun x => Series (fun n => pow (-1) n * pow x (2 * n + 1) / evenfact n))
    (g : R -> R := fun x => Series (fun n => pow x (2 * n) / evenfactsqr n))
    : Lim_seq (fun t : nat => RInt (fun x => f x * g x) 0 (INR t)) = putnam_1997_a3_solution.
Proof. Admitted.
