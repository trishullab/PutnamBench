Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1988_b4
    (b : nat -> (nat -> R) -> R := fun n a => Rpower (a n) (INR n/(INR n + 1)))
    : forall (a: nat -> R), (forall (n: nat), a n > 0) ->
    ex_finite_lim_seq (fun n => sum_n a n) -> ex_finite_lim_seq (fun n => sum_n (fun m => (b m a)) n).
Proof. Admitted.
