import Mathlib
open BigOperators

open Polynomial Filter Topology Real Set Nat List

noncomputable abbrev putnam_2016_a6_solution : ℝ := sorry
-- 5 / 6
/--
Find the smallest constant $C$ such that for every real polynomial $P(x)$ of degree $3$ that has a root in the interval $[0,1]$,
\[
\int_0^1 \left| P(x) \right|\,dx \leq C \max_{x \in [0,1]} \left| P(x) \right|.
\]
-/
theorem putnam_2016_a6
(C : ℝ)
(max : Polynomial ℝ → ℝ)
(hmax : ∀ P : Polynomial ℝ, ∃ x ∈ Icc 0 1, |P.eval x| = max P)
(hmaxub : ∀ P : Polynomial ℝ, ∀ x ∈ Icc 0 1, |P.eval x| ≤ max P)
(p : ℝ → Prop)
(hp : p = fun c ↦ ∀ P : Polynomial ℝ, P.degree = 3 → (∃ x ∈ Icc 0 1, P.eval x = 0) → ∫ x in (0)..1, |P.eval x| ≤ c * max P)
(hpC : p C)
(hClb : ∀ c : ℝ, p c → C ≤ c)
: (C = putnam_2016_a6_solution) :=
sorry
