Require Import Reals Coquelicot.Coquelicot. From mathcomp Require Import bigop.
Open Scope R.
Theorem putnam_1996_b2
    (n : nat)
    (prododd : R := INR (\prod_(1 <= i < (n + 1)) (2 * i - 1)))
    (npos : gt n 0)
    : Rpower ((2 * INR n - 1) / exp 1) ((2 * INR n - 1) / 2) < prododd < Rpower ((2 * INR n + 1) / exp 1) ((2 * INR n + 1) / 2).
Proof. Admitted.
