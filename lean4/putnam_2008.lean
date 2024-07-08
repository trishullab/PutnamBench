import Mathlib
open BigOperators


theorem putnam_2008_a1
(f : ℝ → ℝ → ℝ)
(hf : ∀ x y z : ℝ, f x y + f y z + f z x = 0)
: ∃ g : ℝ → ℝ, ∀ x y : ℝ, f x y = g x - g y :=
sorry

theorem putnam_2008_a3
(n : ℕ)
(npos : n > 0)
(a : Fin n → ℕ)
(apos : ∀ i : Fin n, a i > 0)
(cont : (Fin n → ℕ) → Prop := fun s ↦ ∃ j k : Fin n, j < k ∧ ¬(s j ∣ s k))
(init : (ℕ → Fin n → ℕ) → Prop := fun P ↦ P 0 = a)
(trans : (ℕ → Fin n → ℕ) → Prop := fun P ↦ ∀ t : ℕ, cont (P t) →
      ∃ j k : Fin n, j < k ∧ ¬(P t j ∣ P t k) ∧ P (t + 1) j = Nat.gcd (P t j) (P t k) ∧ P (t + 1) k = Nat.lcm (P t j) (P t k) ∧
      ∀ i : Fin n, i ≠ j → i ≠ k → P (t + 1) i = P t i)
: (∃ f : Fin n → ℕ, ∀ P : ℕ → Fin n → ℕ, init P → trans P → ∃ t : ℕ, ¬cont (P t) ∧ P t = f) :=
sorry

open Filter Topology
abbrev putnam_2008_a4_solution : Prop := sorry
-- False
theorem putnam_2008_a4
(f : ℝ → ℝ)
(hf : f = fun x => if x ≤ Real.exp 1 then x else x * (f (Real.log x)))
: (∃ r : ℝ, Tendsto (fun N : ℕ => ∑ n in Finset.range N, 1/(f (n + 1))) atTop (𝓝 r)) ↔ putnam_2008_a4_solution :=
sorry

open Set
theorem putnam_2008_a5
(n : ℕ)
(nge3 : n ≥ 3)
(f g : Polynomial ℝ)
(hfg : ∃ O z : ℂ, z ≠ 0 ∧ ∀ k : ℕ, k ∈ Icc 1 n → (f.eval (k : ℝ)) + Complex.I * (g.eval (k : ℝ)) = O + z * Complex.exp (Complex.I * 2 * Real.pi * k / n))
: (f.natDegree ≥ n - 1 ∨ g.natDegree ≥ n - 1) :=
sorry

theorem putnam_2008_a6
: (∃ c : ℝ, c > 0 ∧ ∀ G [Group G] (fing : Fintype G), fing.card > 1 → ∃ s : List G, s.length ≤ c * Real.log (fing.card : ℝ) ∧ ∀ g : G, ∃ t : List G, t.Sublist s ∧ t.prod = g) :=
sorry

abbrev putnam_2008_b1_solution : ℕ := sorry
-- 2
def is_rational_point (p : Fin 2 → ℝ) : Prop := ∃ (a b : ℚ), a = p 0 ∧ b = p 1
def real_circle (c : Fin 2 → ℝ) (r : ℝ) : Set (Fin 2 → ℝ) := {p : Fin 2 → ℝ | Euclidean.dist p c = r}
theorem putnam_2008_b1 :
∀ (c : Fin 2 → ℝ) (r : ℝ), ¬ is_rational_point c → (Set.ncard {p : Fin 2 → ℝ | p ∈ real_circle c r ∧ is_rational_point p} ≤ putnam_2008_b1_solution)
∧ ∃ (c : Fin 2 → ℝ) (r : ℝ), ¬ is_rational_point c ∧ (Set.ncard {p : Fin 2 → ℝ | p ∈ real_circle c r ∧ is_rational_point p} = putnam_2008_b1_solution) :=
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

noncomputable abbrev putnam_2008_b3_solution : ℝ := sorry
-- Real.sqrt 2 / 2
theorem putnam_2008_b3
(hypercube : Set (Fin 4 → ℝ) := {P : Fin 4 → ℝ | ∀ i : Fin 4, |P i| ≤ 1 / 2})
(contains : ℝ → (Fin 4 → ℝ) → (Fin 4 → ℝ) → (Fin 4 → ℝ) → Prop := fun r O P Q ↦ ∀ s t : ℝ, (s • P + t • Q ≠ 0 ∧ Euclidean.dist 0 (s • P + t • Q) = r) → O + s • P + t • Q ∈ hypercube)
: (∃ O P Q, contains putnam_2008_b3_solution O P Q) ∧ (∀ r > putnam_2008_b3_solution, ¬∃ O P Q, contains r O P Q) :=
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
