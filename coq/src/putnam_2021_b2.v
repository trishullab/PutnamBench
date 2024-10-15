From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals sequences topology normedtype.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_2021_b2_solution : R := 2/3.
Theorem putnam_2021_b2 :
    putnam_2021_b2_solution \in supremums [set S : R | exists a : R ^nat, series a @ \oo --> 1 /\ (forall k, a k >= 0) /\
                series (fun n : nat => n%:R / (2 ^+ n) * (\prod_(1 <= k < n.+1) a k) ^ (1 / n%:R)) @ \oo --> S].
Proof. Admitted. 