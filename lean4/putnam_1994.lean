import Mathlib
open BigOperators

open Filter Topology
theorem putnam_1994_a1
(a : ℕ → ℝ)
(ha : ∀ n ≥ 1, 0 < a n ∧ a n ≤ a (2 * n) + a (2 * n + 1))
: ¬(∃ s : ℝ, Tendsto (fun N : ℕ => ∑ n : Set.Icc 1 N, a n) atTop (𝓝 s)) :=
sorry

theorem putnam_1994_a3
(vec : ℝ → ℝ → (Fin 2 → ℝ))
(T : Set (Fin 2 → ℝ) := convexHull ℝ {vec 0 0, vec 1 0, vec 0 1})
(Tcolors : T → Fin 4)
(hvec : ∀ x y : ℝ, (vec x y) 0 = x ∧ (vec x y) 1 = y)
: ∃ p q : T, Tcolors p = Tcolors q ∧ Euclidean.dist p.1 q.1 ≥ 2 - Real.sqrt 2 :=
sorry

theorem putnam_1994_a4
(A B : Matrix (Fin 2) (Fin 2) ℤ)
(ABinv : Nonempty (Invertible A) ∧ Nonempty (Invertible (A + B)) ∧ Nonempty (Invertible (A + 2 * B)) ∧ Nonempty (Invertible (A + 3 * B)) ∧ Nonempty (Invertible (A + 4 * B)))
: Invertible (A + 5 * B) :=
sorry

theorem putnam_1994_a5
(r : ℕ → ℝ)
(S : Set ℝ)
(rpos : r > 0)
(rlim : Tendsto r atTop (𝓝 0))
(hS : S = {x : ℝ | ∃ i : Fin 1994 → ℕ, (∀ j k : Fin 1994, j < k → i j < i k) ∧ (x = ∑ j : Fin 1994, r (i j))})
: ∀ a b : ℝ, a < b → (∃ c d : ℝ, a ≤ c ∧ c < d ∧ d ≤ b ∧ (Set.Ioo c d) ∩ S = ∅) :=
sorry

-- Note: uses (ℕ → Fin 10) instead of (Fin m → Fin 10)
theorem putnam_1994_a6
(f : Fin 10 → Equiv.Perm ℤ)
(mijcomp : ℕ → (ℕ → Fin 10) → ℕ → (ℤ → ℤ))
(F : Finset (ℤ → ℤ))
(hf: ∀ n : ℤ, ∃ m : ℕ, ∃ i : ℕ → Fin 10, m ≥ 1 ∧ (mijcomp m i 0) 0 = n)
(hmijcomp : ∀ m ≥ 1, ∀ (i : ℕ → Fin 10) (j : Fin m), mijcomp m i j = if (j = m - 1) then (f (i j) : ℤ → ℤ) else (f (i j) ∘ mijcomp m i (j + 1)))
(hF : F = {g : ℤ → ℤ | ∃ e : Fin 10 → Fin 2, g = (f 0)^[e 0] ∘ (f 1)^[e 1] ∘ (f 2)^[e 2] ∘ (f 3)^[e 3] ∘ (f 4)^[e 4] ∘ (f 5)^[e 5] ∘ (f 6)^[e 6] ∘ (f 7)^[e 7] ∘ (f 8)^[e 8] ∘ (f 9)^[e 9]})
: ∀ A : Finset ℤ, A.Nonempty → {g ∈ F | g '' A = A}.encard ≤ 512 :=
sorry

abbrev putnam_1994_b1_solution : Set ℤ := sorry
-- {n : ℤ | (315 ≤ n ∧ n ≤ 325) ∨ (332 ≤ n ∧ n ≤ 350)}
theorem putnam_1994_b1
(n : ℤ)
(nwithin : Prop)
(hnwithin : nwithin = ({m : ℕ | |n - m ^ 2| ≤ 250}.encard = 15))
: (n > 0 ∧ nwithin) ↔ n ∈ putnam_1994_b1_solution :=
sorry

abbrev putnam_1994_b2_solution : Set ℝ := sorry
-- {c : ℝ | c < 243 / 8}
theorem putnam_1994_b2
(c : ℝ)
(inter : Prop)
(hinter : inter = ∃ m b : ℝ, {x : ℝ | m * x + b = x ^ 4 + 9 * x ^ 3 + c * x ^ 2 + 9 * x + 4}.encard = 4)
: inter ↔ c ∈ putnam_1994_b2_solution :=
sorry

abbrev putnam_1994_b3_solution : Set ℝ := sorry
-- Set.Iio 1
theorem putnam_1994_b3
(k : ℝ)
(allfexN : Prop)
(hallfexN : allfexN = ∀ f : ℝ → ℝ, (f > 0 ∧ Differentiable ℝ f ∧ ∀ x : ℝ, deriv f x > f x) → (∃ N : ℝ, ∀ x > N, f x > Real.exp (k * x)))
: allfexN ↔ k ∈ putnam_1994_b3_solution :=
sorry

theorem putnam_1994_b4
(matgcd : Matrix (Fin 2) (Fin 2) ℤ → ℤ)
(A : Matrix (Fin 2) (Fin 2) ℤ)
(d : ℕ → ℤ)
(hmatgcd : ∀ M : Matrix (Fin 2) (Fin 2) ℤ, matgcd M = Int.gcd (Int.gcd (Int.gcd (M 0 0) (M 0 1)) (M 1 0)) (M 1 1))
(hA : A 0 0 = 3 ∧ A 0 1 = 2 ∧ A 1 0 = 4 ∧ A 1 1 = 3)
(hd : ∀ n ≥ 1, d n = matgcd (A ^ n - 1))
: Tendsto d atTop atTop :=
sorry

theorem putnam_1994_b5
(f : ℝ → ℕ → ℤ)
(n : ℕ)
(hf : ∀ (α : ℝ) (x : ℕ), f α x = Int.floor (α * x))
(npos : n > 0)
: ∃ α : ℝ, ∀ k ∈ Set.Icc 1 n, (((f α) ^ k) (n ^ 2) = n ^ 2 - k) ∧ (f (α ^ k) (n ^ 2) = n ^ 2 - k) :=
sorry

theorem putnam_1994_b6
(n : ℕ → ℤ)
(hn : ∀ a : ℕ, n a = 101 * a - 100 * 2 ^ a)
: ∀ a b c d : Set.Icc 0 99, (n a + n b ≡ n c + n d [ZMOD 10100]) → (({a, b} : Set (Set.Icc 0 99)) = {c, d}) :=
sorry
