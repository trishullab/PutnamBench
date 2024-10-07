From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype trigo measure lebesgue_measure lebesgue_integral topology.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition mu := [the measure _ _ of @lebesgue_measure R].
Theorem putnam_1967_b3
    (f g : R -> R)
    (fgcont : continuous f /\ continuous g)
    (fgperiod : periodic f 1 /\ periodic g 1)
    : (fun n : nat => \int[mu]_(x in [set y | 0 < y < 1]) (f x * g (n%:~R * x))) --> 
        (\int[mu]_(x in [set y | 0 < y < 1]) f x) * (\int[mu]_(x in [set y | 0 < y < 1]) g x).
Proof. Admitted.