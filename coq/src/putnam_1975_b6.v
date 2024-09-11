From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals sequences exp.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1975_b6
    (s : R ^nat := fun n => \sum_(1 <= i < n.+1) (1 / i%:R))
    : (forall n : nat, gt n 1 -> n%:R * (expR (ln ((n + 1)%:R) * 1/n%:R)) < n%:R + s n)
   /\ (forall n : nat, gt n 2 -> (n%:R - 1) * (expR ((ln n%:R) * -1/(n%:R-1))) < n%:R - s n).
Proof. Admitted. 


