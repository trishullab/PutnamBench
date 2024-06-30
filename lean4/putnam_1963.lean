import Mathlib

open Topology Filter
open BigOperators

theorem putnam_1963_a2
(f : ℕ → ℕ)
(hfpos : ∀ n, f n > 0)
(hfinc : StrictMono f)
(hf2 : f 2 = 2)
(hfmn : ∀ m n, m > 0 → n > 0 → IsRelPrime m n → f (m * n) = f m * f n)
: ∀ n > 0, f n = n :=
sorry

noncomputable abbrev putnam_1963_a3_solution : (ℝ → ℝ) → ℕ → ℝ → ℝ → ℝ := sorry
-- fun (f : ℝ → ℝ) (n : ℕ) (x : ℝ) (t : ℝ) ↦ (x - t)^(n - 1) * (f t) / (Nat.factorial (n - 1) * t^n)
theorem putnam_1963_a3
(n : ℕ)
(f : ℝ → ℝ)
(P : ℕ → (ℝ → ℝ) → (ℝ → ℝ))
(δ : (ℝ → ℝ) → (ℝ → ℝ) := fun g : ℝ → ℝ ↦ (fun x : ℝ ↦ x) * deriv g)
(D : ℕ → (ℝ → ℝ) → (ℝ → ℝ) := fun (m : ℕ) (g : ℝ → ℝ) ↦ δ g - (fun x : ℝ ↦ (m : ℝ)) * g)
(y : ℝ → ℝ := fun x : ℝ ↦ ∫ t in Set.Ioo 1 x, putnam_1963_a3_solution f n x t)
(hn : n ≥ 1)
(hf : Continuous f)
(hP : P 0 y = y ∧ ∀ m ∈ Finset.range n, P (m + 1) y = D (n - 1 - m) (P m y))
: (∀ x ≥ 1, P n y x = f x) ∧ (∀ i ∈ Finset.range n, iteratedDeriv i y 1 = 0) :=
sorry

theorem putnam_1963_a4
(apos : (ℕ → ℝ) → Prop := fun a => ∀ n, a n > 0)
(f : (ℕ → ℝ) → ℕ → ℝ := fun a n => n * (((1 + a (n+1)) / (a n)) - 1))
: (∀ a, apos a → limsup (f a) ⊤ ≥ 1) ∧ (∃ a, apos a ∧ limsup (f a) ⊤ = 1) :=
sorry

theorem putnam_1963_a6
(F G : EuclideanSpace ℝ (Fin 2))
(r : ℝ)
(E : Set (EuclideanSpace ℝ (Fin 2)) := {H : EuclideanSpace ℝ (Fin 2) | Euclidean.dist F H + Euclidean.dist G H = r})
(U V A B C D P Q : EuclideanSpace ℝ (Fin 2))
(M : EuclideanSpace ℝ (Fin 2) := midpoint ℝ U V)
(hr : r > Euclidean.dist F G)
(hUV : U ∈ E ∧ V ∈ E ∧ U ≠ V)
(hAB : A ∈ E ∧ B ∈ E ∧ A ≠ B)
(hCD : C ∈ E ∧ D ∈ E ∧ C ≠ D)
(hdistinct : segment ℝ A B ≠ segment ℝ U V ∧ segment ℝ C D ≠ segment ℝ U V ∧ segment ℝ A B ≠ segment ℝ C D)
(hM : M ∈ segment ℝ A B ∧ M ∈ segment ℝ C D)
(hP : Collinear ℝ {P, A, C} ∧ Collinear ℝ {P, U, V})
(hQ : Collinear ℝ {P, B, D} ∧ Collinear ℝ {Q, U, V})
: M = midpoint ℝ P Q :=
sorry

open Polynomial
abbrev putnam_1963_b1_solution : ℤ := sorry
-- 2
theorem putnam_1963_b1
: ∀ a : ℤ, (X^2 - X + (C a)) ∣ (X ^ 13 + X + (C 90)) ↔ a = putnam_1963_b1_solution :=
sorry

abbrev putnam_1963_b2_solution : Prop := sorry
-- True
theorem putnam_1963_b2
(S : Set ℝ := {2 ^ m * 3 ^ n | (m : ℤ) (n : ℤ)})
(P : Set ℝ := Set.Ioi 0)
: closure S ⊇ P ↔ putnam_1963_b2_solution :=
sorry

abbrev putnam_1963_b3_solution : Set (ℝ → ℝ) := sorry
-- {(fun u : ℝ => A * Real.sinh (k * u)) | (A : ℝ) (k : ℝ)} ∪ {(fun u : ℝ => A * u) | A : ℝ} ∪ {(fun u : ℝ => A * Real.sin (k * u)) | (A : ℝ) (k : ℝ)}
theorem putnam_1963_b3
(f : ℝ → ℝ)
(fdiff : Prop := ContDiff ℝ 1 f ∧ Differentiable ℝ (deriv f))
: (fdiff ∧ ∀ x y : ℝ, (f x) ^ 2 - (f y) ^ 2 = f (x + y) * f (x - y)) ↔ f ∈ putnam_1963_b3_solution :=
sorry

theorem putnam_1963_b5
(a : ℤ → ℝ)
(haineq : ∀ n ≥ 1, ∀ k : ℤ, (n ≤ k ∧ k ≤ 2 * n) → (0 ≤ a k ∧ a k ≤ 100 * a n))
(haseries : ∃ S : ℝ, Tendsto (fun N : ℕ => ∑ n : Fin N, a n) atTop (𝓝 S))
: Tendsto (fun n : ℤ => n * a n) atTop (𝓝 0) :=
sorry

theorem putnam_1963_b6
(d : ℕ)
(S : Set (Fin d → ℝ) → Set (Fin d → ℝ) := (fun A : Set (Fin d → ℝ) => ⋃ p ∈ A, ⋃ q ∈ A, segment ℝ p q))
(A : ℕ → Set (Fin d → ℝ))
(ddim : 1 ≤ d ∧ d ≤ 3)
(hA0 : Nonempty (A 0))
(hAn : ∀ n ≥ 1, A n = S (A (n - 1)))
: ∀ n ≥ 2, A n = A (n + 1) :=
sorry
