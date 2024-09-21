From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1978_a5
    (A : seq R)
    (hanemp : gt (size A) 0)
    (ha : all (fun x => 0 < x < pi) A)
    (mu : R := \sum_(a <- A) (a / (size A)%:R))
    : \prod_(a <- A) ((sin a)/a) <= (sin mu / mu) ^+ (size A).
Proof. Admitted. 