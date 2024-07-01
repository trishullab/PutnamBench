import Mathlib

theorem putnam_1964_a1
(A : Finset (Fin 2 → ℝ))
(hAcard : A.card = 6)
(dists : Set ℝ := {d : ℝ | ∃ a b : Fin 2 → ℝ, a ∈ A ∧ b ∈ A ∧ a ≠ b ∧ d = Euclidean.dist a b})
: (sSup dists / sInf dists ≥ Real.sqrt 3) :=
sorry

open Set

-- uses (ℝ → ℝ) instead of (Icc 0 1 → ℝ)
abbrev putnam_1964_a2_solution : ℝ → Set (ℝ → ℝ) := sorry
-- fun _ ↦ ∅
theorem putnam_1964_a2
(α : ℝ)
: (putnam_1964_a2_solution α = {f : ℝ → ℝ | (∀ x ∈ Icc 0 1, f x > 0) ∧ ContinuousOn f (Icc 0 1) ∧ ∫ x in (0)..1, f x = 1 ∧ ∫ x in (0)..1, x * f x = α ∧ ∫ x in (0)..1, x^2 * f x = α^2}) :=
sorry

open BigOperators Function

theorem putnam_1964_a3
(x a b : ℕ → ℝ)
(hxdense : range x ⊆ Ioo 0 1 ∧ closure (range x) ⊇ Ioo 0 1)
(hxinj : Injective x)
(a := fun n ↦ x n - sSup ({0} ∪ {p : ℝ | p < x n ∧ ∃ i < n, p = x i}))
(b := fun n ↦ sInf ({1} ∪ {p : ℝ | p > x n ∧ ∃ i < n, p = x i}) - x n)
: (∑' n : ℕ, a n * b n * (a n + b n) = 1 / 3) :=
sorry

theorem putnam_1964_a4
(u : ℕ → ℤ)
(boundedu : ∃ B T : ℤ, ∀ n : ℕ, B ≤ u n ∧ u n ≤ T)
(hu : ∀ n ≥ 4, u n = ((u (n - 1) + u (n - 2) + u (n - 3) * u (n - 4)) : ℝ) / (u (n - 1) * u (n - 2) + u (n - 3) + u (n - 4)) ∧ (u (n - 1) * u (n - 2) + u (n - 3) + u (n - 4)) ≠ 0)
: (∃ N c : ℕ, c > 0 ∧ ∀ n ≥ N, u (n + c) = u n) :=
sorry

open Filter Topology

theorem putnam_1964_a5
(pa : (ℕ → ℝ) → Prop := fun a ↦ (∀ n : ℕ, a n > 0) ∧ ∃ L : ℝ, Tendsto (fun N ↦ ∑ n in Finset.range N, 1 / a n) atTop (𝓝 L))
: (∃ k : ℝ, ∀ a : ℕ → ℝ, pa a → ∑' n : ℕ, (n + 1) / (∑ i in Finset.range (n + 1), a i) ≤ k * ∑' n : ℕ, 1 / a n) :=
sorry

theorem putnam_1964_a6
(S : Finset ℝ)
(pairs : Set (ℝ × ℝ) := {(a, b) | (a ∈ S) ∧ (b ∈ S) ∧ (a < b)})
(distance : ℝ × ℝ → ℝ := fun (a, b) ↦ b - a)
(hrepdist : ∀ p ∈ pairs, (∃ m ∈ pairs, distance m > distance p) → ∃ q ∈ pairs, q ≠ p ∧ distance p = distance q)
: (∀ p q : pairs, q ≠ p → ∃ r : ℚ, distance p / distance q = r) :=
sorry

theorem putnam_1964_b1
(a : ℕ → ℤ)
(apos : a > 0)
(ha : ∃ L : ℝ, Tendsto (fun N ↦ ∑ n in Finset.range N, (1 : ℝ) / a n) atTop (𝓝 L))
(b : ℕ → ENNReal := fun n ↦ {k : ℕ | a k ≤ n}.encard)
: (Tendsto (fun n : ℕ ↦ b n / n) atTop (𝓝 0)) :=
sorry


theorem putnam_1964_b2
(S : Type*) [Fintype S] [Nonempty S]
(P : Finset (Set S))
(hPP : ∀ T ∈ P, ∀ U ∈ P, T ∩ U ≠ ∅)
(hPS : ¬∃ T : Set S, T ∉ P ∧ (∀ U ∈ P, T ∩ U ≠ ∅))
: (P.card = 2 ^ (Fintype.card (Set S) - 1)) :=
sorry

theorem putnam_1964_b3
(f : ℝ → ℝ)
(hf : Continuous f ∧ ∀ α > 0, Tendsto (fun n : ℕ ↦ f (n * α)) atTop (𝓝 0))
: (Tendsto f atTop (𝓝 0)) :=
sorry

theorem putnam_1964_b5
(a : ℕ → ℕ)
(ha : StrictMono a ∧ ∀ n : ℕ, a n > 0)
(b : ℕ → ℕ)
(hb : b 0 = a 0 ∧ ∀ n : ℕ, b (n + 1) = lcm (b n) (a (n + 1)))
: (∃ L : ℝ, Tendsto (fun N ↦ ∑ n in Finset.range N, (1 : ℝ) / b n) atTop (𝓝 L)) :=
sorry

theorem putnam_1964_b6
(D : Set (Fin 2 → ℝ) := {v : Fin 2 → ℝ | Euclidean.dist 0 v ≤ 1})
(cong : Set (Fin 2 → ℝ) → Set (Fin 2 → ℝ) → Prop := fun A B ↦ ∃ f : (Fin 2 → ℝ) → (Fin 2 → ℝ), B = f '' A ∧ ∀ v w : Fin 2 → ℝ, Euclidean.dist v w = Euclidean.dist (f v) (f w))
: (¬∃ A B : Set (Fin 2 → ℝ), cong A B ∧ A ∩ B = ∅ ∧ A ∪ B = D) :=
sorry
