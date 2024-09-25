From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals sequences topology normedtype.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1963_a4
    (T : (nat -> R) -> (nat -> R))
    (T_def : forall a n, T a n = n%:R * ((1 + a (n.+1)) / a n - 1))
    (P : (nat -> R) -> R -> Prop)
    (P_def : forall a C, (P a C <-> C <= limn_sup (T a) \/ ~ (exists B, forall n, T a n <= B)))
    : (forall a, (forall n, a n > 0) -> P a 1) /\ (forall C : R, C > 1 -> exists a, (forall n, a n > 0) /\ ~ P a C).
Proof. Admitted.