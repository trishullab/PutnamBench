Require Import Reals Nat ZArith Coquelicot.Coquelicot.
Theorem putnam_1966_a1
    (f : nat -> R := fun n => (sum_n (fun m => (if (even m) then INR m else INR (m-1)) : R) n) / 2)
    : forall x y : nat, ge x y -> INR x * INR y = f (add x y) - f (sub x y).
Proof. Admitted.
