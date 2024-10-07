From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1968_a4
    (S : seq (R * R * R))
    (hS : all (fun x => x.1.1 ^+ 2 + x.1.2 ^+ 2 + x.2 ^+ 2 == 1) S)
    : \sum_(i <- S) \sum_(j <- S) ((i.1.1 - j.1.1) ^+ 2 + (i.1.2 - j.1.2) ^+ 2 + (i.2 - j.2) ^+ 2) <= 2 * (size S)%:R ^+ 2.
Proof. Admitted.
