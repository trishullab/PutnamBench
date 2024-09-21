From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1978_b4 
    : forall N : R, exists a b c d : int, (a%:~R) > N /\ (b%:~R) > N /\ (c%:~R) > N /\ (d%:~R) > N /\ a ^+ 2 + b ^+ 2 + c ^+ 2 + d ^+ 2 = a * b * c + a * b * d + a * c * d + b * c * d.
Proof. Admitted.