From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals normedtype sequences topology derive measure lebesgue_measure lebesgue_integral.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition mu := [the measure _ _ of @lebesgue_measure R].
Definition putnam_1962_a2_solution : set (R -> R) := [set f | exists a c : R, a >= 0 /\ f = (fun x : R => a / (1 - c * x) ^ 2)].
Theorem putnam_1962_a2
    (P : (set R) -> (R -> R) -> Prop)
    (P_def : forall s f, P s f <-> ((forall x, f x >= 0) /\ forall x, x \in s -> 
                1/x * \int[mu]_(t in [set t | 0 <= t <= x]) f t = Num.sqrt (f 0 * f x)))
    : (forall f,
        (P [set t | 0 < t] f -> exists g, g \in putnam_1962_a2_solution /\ (forall x : R, x > 0 -> f x = g x)) /\
        (forall e, 0 < e -> P [set t | 0 < t < e] f -> exists g, g \in putnam_1962_a2_solution /\ (forall x : R, 0 <= x < e -> f x = g x))) /\
        forall f, f \in putnam_1962_a2_solution -> P [set t | 0 < t] f \/ exists e, 0 < e /\ P [set t | 0 < t < e] f.
Proof. Admitted.