From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals exp sequences boolp topology normedtype.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Theorem putnam_1972_b1
    (S : R -> R)
    (hS : forall x : R, (fun n : nat => \sum_(i < n) (x ^+ n * (x - 1) ^+ (n.*2) / (n`!)%:R)%R) @ \oo --> S x)
    (p : nat -> R)
    (hp : exists a : R, a > 0 /\ forall x : R, `| x | < a -> (fun n : nat => \sum_(i < n) ((p n) * x^+n)%R) @ \oo --> S x)
    : ~exists n : nat, p n = 0 /\ p n.+1 = 0 /\ p n.+2 = 0.
Proof. Admitted.