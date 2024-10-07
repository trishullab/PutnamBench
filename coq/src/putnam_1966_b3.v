From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype topology sequences.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Theorem putnam_1966_b3
    (p : R ^nat)
    (hpos : forall n : nat, p n > 0)
    (hconv : exists r : R, (fun m : nat => \sum_(1 <= n < m.+1) (1 / (p n))) @ \oo --> r)
    : exists r : R, (fun m : nat => \sum_(1 <= n < m.+1) ((p n) * n%:R^+2 / (\sum_(1 <= k < n.+1) (p k))^+2)) @ \oo --> r.
Proof. Admitted.