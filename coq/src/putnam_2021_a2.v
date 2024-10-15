From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals normedtype sequences topology exp.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.
Import Order.TTheory GRing.Theory Num.Theory.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.
Local Open Scope card_scope.

Variable R : realType.
(* Note: This is a slightly weaker statement due to the lack of the ``eventually'' filter for reals. *)
Definition putnam_2021_a2_solution : R := expR 1.
Theorem putnam_2021_a2
    (g : R -> R)
    (hg : forall x : R, x > 0 -> (fun r : R => expR (1/r * ln ((expR (ln (x + 1) * (r + 1))) - (expR (ln x * (r + 1)))))) @ at_right 0 --> g x)
    : (fun x : nat => g x%:R / x%:R) @ \oo --> putnam_2021_a2_solution.
Proof. Admitted.