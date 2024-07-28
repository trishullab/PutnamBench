Require Import Basics ZArith.
Open Scope Z_scope.
Theorem putnam_1992_a1 
    (f : Z -> Z) 
    : f = (fun n => 1 - n) <-> ((forall n : Z, f (f n) = n) /\ (forall n : Z, f (f (n + 2) + 2) = n) /\ f 0 = 1).
Proof. Admitted.
