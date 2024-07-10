Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_1999_a6
    (A := fix a (n: nat) :=
        match n with 
        | O => 1
        | S O => 2
        | S (S O) => 24
        | S (S ((S n'') as n') as n) => (6 * a n ^ 2 * a n'' - 8 * a n * a n' ^ 2) / (a n' * a n'')
    end) 
    : forall (n: nat), exists (k: nat), A n = INR (n * k).
Proof. Admitted.
