From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals normedtype sequences exp topology.
From mathcomp Require Import classical_sets cardinality.
Import numFieldNormedType.Exports.
Import Order.TTheory GRing.Theory Num.Theory.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.
Local Open Scope card_scope.

Variable R : realType.

Definition putnam_2016_b2_solution : R*R := (3/4, 4/3).
Theorem putnam_2016_b2
    (is_square : int -> Prop := fun n => (exists m : int, n = m ^+ 2))
    (squarish : int -> Prop := fun n => is_square n \/ (exists w : int, is_square `|n - w ^+2| /\ forall v : int, `|n - w ^+2| <= `|n - v ^+2|))
    (S : int -> nat)
    (hS : forall n : nat, [set: 'I_(S n%:Z)] #= [set i : 'I_n | ge i 1 /\ le i n /\ squarish i])
    (p : R -> R -> Prop)
    (hp : forall alpha beta, p alpha beta <-> (alpha > 0 /\ beta > 0 /\ (fun N : nat => (S N)%:R / (expR (alpha * ln N%:R))) @ \oo --> beta))
    : (forall alpha beta, p alpha beta <-> (alpha, beta) = putnam_2016_b2_solution) \/ ~ exists alpha beta, p alpha beta.
Proof. Admitted.

