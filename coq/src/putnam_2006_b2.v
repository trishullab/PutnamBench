From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Open Scope ring_scope.

Variable R : realType.
Theorem putnam_2006_b2
    (n : nat)
    (hn : gt n 0)
    (X : seq R)
    (hX : uniq X /\ size X = n)
    : exists S : seq R, subseq S X /\
        size S <> 0%nat /\
        (exists m : int, `|m%:~R + \sum_(s <- S) s| <= 1 / (n%:R + 1)).
Proof. Admitted.