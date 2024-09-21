From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals normedtype topology.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

(* Note: This formalization encodes rational functions manually. There may be a better way with existing mathcomp terminology. *)
Variable R : realType.
Definition putnam_1977_a4_solution : {poly R}*{poly R} := ('X, 1%:P - 'X).
Theorem putnam_1977_a4
    : forall x : R, 0 < x < 1 -> ((fun n : nat => \sum_(0 <= i < n) ((x ^+ (2 ^ n))/(1 - x ^+ (2 ^ (n.+1))))) @ \oo --> putnam_1977_a4_solution.1.[x] / putnam_1977_a4_solution.2.[x]).
Proof. Admitted.