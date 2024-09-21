From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals sequences exp trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Definition is_rational (x : R) := exists p q : int, q != 0 /\ x = (p%:~R) / (q%:~R).
Theorem putnam_1974_b3
    (a : R)
    (ha : cos (pi * a) = 1/3)
    : ~ is_rational a.
Proof. Admitted.
