From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals topology normedtype.
From mathcomp Require Import classical_sets.
Import numFieldTopology.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_1963_b2_solution : Prop := True.
Theorem putnam_1963_b2
    (S : set R := [set x | exists m n : int, x = 2 ^ m * 3 ^ n])
    : [set x : R | 0 < x] `<=` closure S.
Proof. Admitted.