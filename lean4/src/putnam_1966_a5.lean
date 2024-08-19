import Mathlib
open BigOperators

open Topology Filter

theorem putnam_1966_a5
(C : Set (ℝ → ℝ))
(hC : C = {f : ℝ → ℝ | Continuous f})
(T : (ℝ → ℝ) → (ℝ → ℝ))
(imageTC : ∀ f ∈ C, T f ∈ C)
(linearT : ∀ a b : ℝ, ∀ f ∈ C, ∀ g ∈ C, T ((fun x => a)*f + (fun x => b)*g) = (fun x => a)*(T f) + (fun x => b)*(T g))
(localT : ∀ r s : ℝ, r ≤ s → ∀ f ∈ C, ∀ g ∈ C, (∀ x ∈ Set.Icc r s, f x = g x) → (∀ x ∈ Set.Icc r s, T f x = T g x))
: ∃ f ∈ C, ∀ g ∈ C, T g = f * g :=
sorry
