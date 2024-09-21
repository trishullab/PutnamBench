From mathcomp Require Import all_ssreflect ssrnum ssralg ring_quotient.
From mathcomp Require Import reals sequences exp topology normedtype derive.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Theorem putnam_1975_b5
    (f : nat -> R -> R)
    (h0 : f 0%nat = expR)
    (hf : forall (n : nat) (x : R), f n.+1 x = x * ((f n)^`() x))
    : series (fun n => f n 1 / n`!%:R) @ \oo --> (expR (expR 1)).
Proof. Admitted.
