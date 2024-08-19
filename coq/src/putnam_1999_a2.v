From mathcomp.analysis Require Import reals. From mathcomp Require Import ssrnat ssrnum ssralg fintype poly.
Open Scope ring_scope.
Theorem putnam_1999_a2
    (R : realType)
    (p : {poly R})
    (hpos : forall x, (p.[x] >= 0) = true)
    : exists (k : nat) (f : nat -> {poly R}), p = \sum_(i < k) ((f i)*(f i)).
Proof. Admitted.
