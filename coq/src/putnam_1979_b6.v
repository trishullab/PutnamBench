From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals complex.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1979_b6
    (l : seq R[i])
    : `|Re (sqrtc (\sum_(z <- l) (z ^+ 2)))| <= \sum_(z <- l) `|Re z|.
Proof. Admitted.