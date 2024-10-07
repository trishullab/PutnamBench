From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals sequences exp.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1965_a6
    (u v m : R)
    (hu : 0 < u)
    (hv : 0 < v)
    (hm : 1 < m) :
    (exists x y : R,
        x > 0 /\
        y > 0 /\
        u * x + v * y = 1 /\
        expR (m * ln x) + expR (m * ln y) = 1 /\
        u = expR ((m - 1) * ln x) /\
        v = expR ((m - 1) * ln y)) <->
    (exists n : R, expR (n * ln u) + expR (n * ln v) = 1 /\
        1/m + 1/n = 1).
Proof. Admitted.