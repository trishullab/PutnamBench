From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals sequences.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1964_a4
    (u : nat -> R)
    (boundedu : exists B T : R, forall n : nat, B <= u n <= T)
    (hu : forall n : nat, ge n 4 -> u n = (u (n.-1) + u (n.-2) + u (Nat.sub n 3) * u (Nat.sub n 4)) / (u (n.-1) * u (n.-2) + u (Nat.sub n 3) + u (Nat.sub n 4)) /\ (u (n.-1) * u (n.-2) + u (Nat.sub n 3) + u (Nat.sub n 4)) != 0)
    (hu' : forall n : nat, exists k : int, u n = k%:~R)
    : exists N c : nat, gt c 0 /\ forall n : nat, ge n N -> u (Nat.add n c) = u n.
Proof. Admitted. 