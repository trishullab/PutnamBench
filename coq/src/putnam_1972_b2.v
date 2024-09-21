From mathcomp Require Import all_ssreflect ssrnum ssralg.
From mathcomp Require Import reals sequences topology normedtype derive.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_1972_b2_solution : R -> R -> R := fun s v => 2 * s / v. 
Theorem putnam_1972_b2
    (s v : R)
    (hs : s > 0)
    (hv : v > 0)
    (valid : R -> (R -> R) -> Prop := fun t x =>
        (forall w : R, 0 <= w <= t -> differentiable x w /\ differentiable x^`() w) /\
        (forall a b : R, 0 <= a <= b /\ b <= t -> x^`(2) b <= x^`(2) a /\ 
        x^`() 0 = 0 /\ x^`() t = v /\ x t - x 0 = s))
    : (exists x : R -> R, valid (putnam_1972_b2_solution s v) x) /\
      (forall t : R, t > putnam_1972_b2_solution s v -> ~(exists x : R -> R, valid t x)).
Proof. Admitted.