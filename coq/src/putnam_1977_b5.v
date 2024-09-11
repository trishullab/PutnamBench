From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1977_b5
    (a : seq R)
    (A : R)
    (ha : gt (size a) 1)
    (hA : A + \sum_(i <- a) (i ^+ 2) <= 1/((size a)%:R - 1) * (\sum_(i <- a) i) ^+ 2)
    : pairwise (fun x y => A < 2 * x * y) a.
Proof. Admitted.