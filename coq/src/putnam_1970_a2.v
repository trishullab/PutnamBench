From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1970_a2
    (A B C D E F G : R)
    (hle : B ^+ 2 - 4 * A * C < 0)
    : exists delta : R, delta > 0 /\ (~ exists x y : R, 0 < x ^+ 2 + y ^+ 2 < delta ^+ 2 /\ 
    A * x ^+ 2 + B * x * y + C * y ^+ 2 + D * x ^+ 3 + E * x ^+ 2 * y + F * x * y ^+ 2 + G * y ^+ 3 = 0).
Proof. Admitted.
