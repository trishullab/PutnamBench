import Mathlib
open BigOperators

open Metric Set EuclideanGeometry

theorem putnam_1970_a1
(a b : ℝ)
(ha : a > 0)
(hb : b > 0)
(f : ℝ → ℝ := fun x : ℝ => Real.exp (a*x) * Real.cos (b*x))
(p : ℕ → ℝ)
(hp : ∃ c : ℝ, c > 0 ∧ ∀ x ∈ ball 0 c, ∑' n : ℕ, (p n)*x^n = f x)
(S : Set ℕ := {n : ℕ | p n = 0})
: S = ∅ ∨ ¬Finite S :=
sorry

theorem putnam_1970_a2
(A B C D E F G : ℝ)
(hle : B^2 - 4*A*C < 0)
: ∃ δ > 0, ¬∃ x y : ℝ, x^2 + y^2 ∈ Set.Ioo 0 (δ^2) ∧
A*x^2 + B*x*y + C*y^2 + D*x^3 + E*x^2*y + F*x*y^2 + G*y^3 = 0 :=
sorry

abbrev putnam_1970_a3_solution : ℕ × ℕ := sorry
-- (3, 1444)
theorem putnam_1970_a3
(L : ℕ → ℕ)
(hL : ∀ n : ℕ, L n ≤ (Nat.digits 10 n).length ∧
(∀ k : ℕ, k < L n → (Nat.digits 10 n)[k]! = (Nat.digits 10 n)[0]!) ∧
(L n ≠ (Nat.digits 10 n).length → (Nat.digits 10 n)[L n]! ≠ (Nat.digits 10 n)[0]!))
: (∃ n : ℕ, (Nat.digits 10 (n^2))[0]! ≠ 0 ∧ L (n^2) = putnam_1970_a3_solution.1) ∧
(∀ n : ℕ, (Nat.digits 10 (n^2))[0]! ≠ 0 → L (n^2) ≤ putnam_1970_a3_solution.1) ∧
(∃ m : ℕ, m^2 = putnam_1970_a3_solution.2) ∧
L (putnam_1970_a3_solution.2) = putnam_1970_a3_solution.1 ∧
(Nat.digits 10 putnam_1970_a3_solution.2)[0]! ≠ 0 ∧
∀ n : ℕ, (Nat.digits 10 (n^2))[0]! ≠ 0 ∧ L (n^2) = putnam_1970_a3_solution.1 → n^2 ≥ putnam_1970_a3_solution.2 :=
sorry


open Filter Topology
theorem putnam_1970_a4
(x : ℕ → ℝ)
(hxlim : Tendsto (fun n => x n - x (n-2)) atTop (𝓝 0))
: Tendsto (fun n => (x n - x (n-1))/n) atTop (𝓝 0) :=
sorry

noncomputable abbrev putnam_1970_b1_solution : ℝ := sorry
-- Real.exp (2 * Real.log 5 - 4 + 2 * Real.arctan 2)
theorem putnam_1970_b1
: Tendsto (fun n => 1/(n^4) * ∏ i in Finset.Icc (1 : ℤ) (2*n), ((n^2 + i^2) : ℝ)^((1 : ℝ)/n)) atTop (𝓝 putnam_1970_b1_solution) :=
sorry

theorem putnam_1970_b2
(T : ℝ)
(H : Polynomial ℝ)
(hT : T > 0)
(hH : H.degree ≤ 3)
: (H.eval (-T / Real.sqrt 3) + H.eval (T / Real.sqrt 3))/2 = ⨍ t in Set.Icc (-T) T, H.eval t :=
sorry

theorem putnam_1970_b3
(S : Set (ℝ × ℝ))
(a b : ℝ)
(hab : a < b)
(hS : ∀ s ∈ S, s.1 ∈ Ioo a b)
(hSclosed : IsClosed S)
: IsClosed {y | ∃ x : ℝ, ⟨x,y⟩ ∈ S} :=
sorry

theorem putnam_1970_b4
(x : ℝ → ℝ)
(hdiff : DifferentiableOn ℝ x (Set.Icc 0 1) ∧ DifferentiableOn ℝ (deriv x) (Set.Icc 0 1))
(hx : x 1 - x 0 = 1)
(hv : deriv x 0 = 0 ∧ deriv x 1 = 0)
(hs : ∀ t ∈ Set.Ioo 0 1, |deriv x t| ≤ 3/2)
: ∃ t ∈ Set.Icc 0 1, |(deriv (deriv x)) t| ≥ 9/2 :=
sorry

theorem putnam_1970_b5
(ramp : ℤ → (ℝ → ℝ) := fun n => (fun x => if x ≤ -n then -n else (if -n < x ∧ x ≤ n then x else n)))
(F : ℝ → ℝ)
: Continuous F ↔ (∀ n : ℕ, Continuous ((ramp n) ∘ F)) :=
sorry

-- TODO: (George) Check for Euclidean.dist errors on Lean version migration
theorem putnam_1970_b6
(L : ZMod 4 → EuclideanSpace ℝ (Fin 2))
(S : Set (EuclideanSpace ℝ (Fin 2)) := {L i | i : ZMod 4})
(hSquad : S.card = 4 ∧ ∀ s ⊆ S, s.card = 3 → ¬ Collinear ℝ s)
(hlens : Euclidean.dist (L 0) (L 1) > 0 ∧ Euclidean.dist (L 1) (L 2) > 0 ∧ Euclidean.dist (L 2) (L 3) > 0 ∧ Euclidean.dist (L 3) (L 0) > 0)
(horder : ∀ i : ZMod 4, segment ℝ (L i) (L (i + 1)) ∩ interior (convexHull ℝ S) = ∅)
(hcircum : ∃ (O : EuclideanSpace ℝ (Fin 2)) (r : ℝ), O ∈ convexHull ℝ S ∧ r > 0 ∧ ∀ i : ZMod 4,
∃! I : EuclideanSpace ℝ (Fin 2), Collinear ℝ {I, L i, L (i + 1)} ∧ Euclidean.dist O I = r)
(harea : (MeasureTheory.volume (convexHull ℝ S)).toReal =
Real.sqrt (Euclidean.dist (L 0) (L 1) * Euclidean.dist (L 1) (L 2) * Euclidean.dist (L 2) (L 3) * Euclidean.dist (L 3) (L 0)))
: Cospherical S :=
sorry
