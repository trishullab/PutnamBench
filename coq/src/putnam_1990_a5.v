From mathcomp Require Import matrix ssralg.
Open Scope ring_scope.
Theorem putnam_1990_a5 
    (R : ringType) 
    (n : nat) 
    (A B : 'M[R]_n) 
    : mulmx (mulmx (mulmx A B) A) B = 0 ->
    mulmx (mulmx (mulmx B A) B) A = 0.
Proof. Admitted.
