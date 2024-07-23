From mathcomp Require Import matrix ssralg ssrbool.
Open Scope ring_scope.
Definition putnam_1991_a2_solution := False.
Theorem putnam_1991_a2
    (R : comUnitRingType) 
    (n : nat) 
    (npos : n >= 1)
    : (exists A B : 'M[R]_n, A <> B /\ mulmx (mulmx A A) A = mulmx (mulmx B B) B /\
    mulmx (mulmx A A) B = mulmx (mulmx B B) A /\
    (mulmx A A + mulmx B B) \in unitmx) <-> putnam_1991_a2_solution.
Proof. Admitted.
