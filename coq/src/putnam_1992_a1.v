Require Import Basics.
Theorem putnam_1992_a1 
    (f : nat -> nat) 
    (hf : forall (n: nat), f (f n) = n /\ f (f (n + 2)) + 2 = n /\ f 0 = 1)
    : f = (fun n => 1 - n).
Proof. Admitted.
