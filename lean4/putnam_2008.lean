import Mathlib
open BigOperators


theorem putnam_2008_a1
(f : ℝ → ℝ → ℝ)
(hf : ∀ x y z : ℝ, f x y + f y z + f z x = 0)
: ∃ g : ℝ → ℝ, ∀ x y : ℝ, f x y = g x - g y :=
sorry


open Filter Topology
abbrev putnam_2008_a4_solution : Prop := sorry
-- False
theorem putnam_2008_a4
(f : ℝ → ℝ)
(hf : f = fun x => if x ≤ Real.exp 1 then x else x * (f (Real.log x)))
: (∃ r : ℝ, Tendsto (fun N : ℕ => ∑ n in Finset.range N, 1/(f (n + 1))) atTop (𝓝 r)) ↔ putnam_2008_a4_solution :=
sorry

theorem putnam_2008_a6
: (∃ c : ℝ, c > 0 ∧ ∀ G [Group G] (fing : Fintype G), fing.card > 1 → ∃ s : List G, s.length ≤ c * Real.log (fing.card : ℝ) ∧ ∀ g : G, ∃ t : List G, t.Sublist s ∧ t.prod = g) :=
sorry

abbrev putnam_2008_b1_solution : ℕ := sorry
-- 2
def is_rational_point (x y : ℝ) : Prop := ∃ (a b : ℚ), a = x ∧ b = y
def real_circle (a b r : ℝ) : Set (ℝ × ℝ) := {p | (p.1 - a)^2 + (p.2 - b)^2 = r^2}
theorem putnam_2008_b1 :
∀ a b r : ℝ, ¬ is_rational_point a b → (Set.ncard {p : ℝ × ℝ | p ∈ real_circle a b r ∧ is_rational_point p.1 p.2} ≥ putnam_2008_b1_solution)
∧ ∃ a b r : ℝ, ¬ is_rational_point a b → (Set.ncard {p : ℝ × ℝ | p ∈ real_circle a b r ∧ is_rational_point p.1 p.2} = putnam_2008_b1_solution) :=
sorry

open Nat Filter Topology
abbrev putnam_2008_b2_solution : ℝ := sorry
-- -1
theorem putnam_2008_b2
(F : ℕ → ℝ → ℝ)
(hF0 : ∀ x : ℝ, F 0 x = Real.log x)
(hFn : ∀ n : ℕ, ∀ x > 0, F (n + 1) x = ∫ t in Set.Ioo 0 x, F n t)
: Tendsto (fun n : ℕ => ((n)! * F n 1) / Real.log n) atTop (𝓝 putnam_2008_b2_solution) :=
sorry

theorem putnam_2008_b4
(p : ℕ)
(hp : Nat.Prime p)
(h : Polynomial ℤ)
(hh : ∀ i j : Finset.range (p ^ 2), h.eval i ≡ h.eval j [ZMOD p ^ 2] → i = j)
: (∀ i j : Finset.range (p ^ 3), h.eval i ≡ h.eval j [ZMOD p ^ 3] → i = j) :=
sorry

abbrev putnam_2008_b5_solution : Set (ℝ → ℝ) := sorry
-- {fun (x : ℝ) => x + n | n : ℤ} ∪ {fun (x : ℝ) => -x + n | n : ℤ}
theorem putnam_2008_b5
(fqsat : (ℝ → ℝ) → ℚ → Prop := fun f q => ContDiff ℝ 1 f ∧ (∃ p : ℚ, p = f q ∧ p.den = q.den))
(fsat : (ℝ → ℝ) → Prop := fun f => ∀ q : ℚ, fqsat f q)
: ∀ f : (ℝ → ℝ), fsat f ↔ f ∈ putnam_2008_b5_solution :=
sorry

def klimited (k n : ℕ) (s : Equiv.Perm (Fin n)) := ∀ i, |((s i) : ℤ) - i| ≤ k
theorem putnam_2008_b6
(n k : ℕ)
(hnk : n > 0 ∧ k > 0)
: Odd (Set.ncard {s : Equiv.Perm (Fin n) | klimited k n s}) ↔ (n ≡ 0 [MOD 2*k+1] ∨ n ≡ 1 [MOD 2*k+1]) :=
sorry

