import Mathlib
open BigOperators

open Matrix Function Real

theorem putnam_2012_b1
(nneg : Set ℝ := Set.Ici 0)
(S : Set (nneg → ℝ))
(rngS : ∀ f ∈ S, ∀ x : nneg, f x ∈ nneg)
(f1 : nneg → ℝ := fun x ↦ exp x - 1)
(f2 : nneg → ℝ := fun x ↦ Real.log (x + 1))
(hf1 : f1 ∈ S)
(hf2 : f2 ∈ S)
(hsum : ∀ f ∈ S, ∀ g ∈ S, (fun x ↦ (f x) + (g x)) ∈ S)
(hcomp : ∀ f ∈ S, ∀ g ∈ S, ∀ gnneg : nneg → nneg, ((∀ x : nneg, g x = gnneg x) → (fun x ↦ f (gnneg x)) ∈ S))
(hdiff : ∀ f ∈ S, ∀ g ∈ S, (∀ x : nneg, f x ≥ g x) → (fun x ↦ (f x) - (g x)) ∈ S)
: (∀ f ∈ S, ∀ g ∈ S, (fun x ↦ (f x) * (g x)) ∈ S) :=
sorry
