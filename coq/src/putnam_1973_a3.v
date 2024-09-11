From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1973_a3
    (b : int -> R)
    (hbminle : forall n : int, (forall k : int, k > 0 -> b n <= k%:~R + (n%:~R/k%:~R)) /\ (exists k : int, k > 0 /\ b n =  k%:~R + (n%:~R/k%:~R)))
    : forall n : int, n > 0 -> floor (b n) = floor (@Num.sqrt R (4 * n%:~R + 1)).
Proof. Admitted.