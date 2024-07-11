Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1996_b2
    (oddfact := fix odd_fact (n : nat) : R :=
        match n with
        | O => 1 
        | S n' => (2 * INR n - 1) * odd_fact n'
    end)
    : forall (n: nat), gt n 0 -> pow ((2 * INR n - 1) / exp 1) ((2 * n - 1) / 2) < oddfact n < pow ((2 * INR n + 1) / exp 1) ((2 * n + 1) / 2).
Proof. Admitted.
