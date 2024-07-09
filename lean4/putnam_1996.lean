import Mathlib
open BigOperators

abbrev putnam_1996_a2_solution : (Fin 2 → ℝ) → (Fin 2 → ℝ) → Set (Fin 2 → ℝ) := sorry
-- (fun O1 O2 : Fin 2 → ℝ => {p : Fin 2 → ℝ | Euclidean.dist p (midpoint ℝ O1 O2) ≥ 1 ∧ Euclidean.dist p (midpoint ℝ O1 O2) ≤ 2})
theorem putnam_1996_a2
(O1 O2 : Fin 2 → ℝ)
(C1 : Set (Fin 2 → ℝ) := {p : Fin 2 → ℝ | Euclidean.dist p O1 = 1})
(C2 : Set (Fin 2 → ℝ) := {p : Fin 2 → ℝ | Euclidean.dist p O2 = 3})
(hO1O2 : Euclidean.dist O1 O2 = 10)
: {M : Fin 2 → ℝ | ∃ X Y : Fin 2 → ℝ, X ∈ C1 ∧ Y ∈ C2 ∧ M = midpoint ℝ X Y} = putnam_1996_a2_solution O1 O2 :=
sorry

abbrev putnam_1996_a3_solution : Prop := sorry
-- False
theorem putnam_1996_a3
(student_choices : Finset.range 20 → Set (Finset.range 6))
: putnam_1996_a3_solution ↔ ∃ S : Set (Finset.range 20), ∃ c1 c2 : Finset.range 6, c1 ≠ c2 ∧ S.ncard = 5 ∧ ({c1, c2} ⊆ ⋂ s ∈ S, student_choices s ∨ ({c1, c2} ⊆ ⋂ s ∈ S, (student_choices s)ᶜ)) :=
sorry

open Function
theorem putnam_1996_a4
(A : Type*)
[Finite A]
(S : Set (A × A × A))
(hSdistinct : ∀ a b c : A, ⟨a, b, c⟩ ∈ S → a ≠ b ∧ b ≠ c ∧ a ≠ c)
(hS1 : ∀ a b c : A, ⟨a, b, c⟩ ∈ S ↔ ⟨b, c, a⟩ ∈ S)
(hS2 : ∀ a b c : A, ⟨a, b, c⟩ ∈ S ↔ ⟨c, b, a⟩ ∉ S)
(hS3 : ∀ a b c d : A, (⟨a, b, c⟩ ∈ S ∧ ⟨c, d, a⟩ ∈ S) ↔ (⟨b,c,d⟩ ∈ S ∧ ⟨d,a,b⟩ ∈ S))
: ∃ g : A → ℝ, Injective g ∧ (∀ a b c : A, g a < g b ∧ g b < g c → ⟨a,b,c⟩ ∈ S) :=
sorry

theorem putnam_1996_a5
(p : ℕ)
(hpprime : Prime p)
(hpge3 : p > 3)
(k : ℕ := Nat.floor (2*p/(3 : ℚ)))
: p^2 ∣ ∑ i in Finset.Icc 1 k, Nat.choose p i :=
sorry


abbrev putnam_1996_a6_solution : ℝ → Set (ℝ → ℝ) := sorry
-- (fun c : ℝ => if c ≤ 1 / 4 then {f : ℝ → ℝ | ∃ d : ℝ, ∀ x : ℝ, f x = d} else {f : ℝ → ℝ | ContinuousOn f (Set.Icc 0 c) ∧ f 0 = f c ∧ (∀ x > 0, f x = f (x ^ 2 + c)) ∧ (∀ x < 0, f x = f (-x))})
theorem putnam_1996_a6
(c : ℝ)
(f : ℝ → ℝ)
(cgt0 : c > 0)
: (Continuous f ∧ ∀ x : ℝ, f x = f (x ^ 2 + c)) ↔ f ∈ putnam_1996_a6_solution c :=
sorry

abbrev putnam_1996_b1_solution : ℕ → ℕ := sorry
-- Nat.fib
theorem putnam_1996_b1
(selfish : Finset ℕ → Prop)
(n : ℕ)
(hselfish : ∀ s : Finset ℕ, selfish s = (s.card ∈ s))
(npos : n ≥ 1)
: {s : Finset ℕ | (s : Set ℕ) ⊆ Set.Icc 1 n ∧ selfish s ∧ (∀ ss : Finset ℕ, ss ⊂ s → ¬selfish ss)}.encard = putnam_1996_b1_solution n :=
sorry

theorem putnam_1996_b2
(n : ℕ)
(prododd : ℝ)
(npos : n > 0)
(hprododd : prododd = ∏ i in Finset.range (2 * n), if Odd i then i else 1)
: ((2 * n - 1 : ℝ) / Real.exp 1) ^ ((2 * n - 1 : ℝ) / 2) < prododd ∧ prododd < ((2 * n + 1 : ℝ) / Real.exp 1) ^ ((2 * n + 1 : ℝ) / 2) :=
sorry

-- Note: uses (ℕ → ℕ) instead of (Fin n → ℕ)
abbrev putnam_1996_b3_solution : ℕ → ℕ := sorry
-- (fun n : ℕ => (2 * n ^ 3 + 3 * n ^ 2 - 11 * n + 18) / 6)
theorem putnam_1996_b3
(n : ℕ)
(xset : (ℕ → ℤ) → Prop)
(xsum : (ℕ → ℤ) → ℤ)
(nge2 : n ≥ 2)
(hxset : ∀ x : ℕ → ℤ, xset x = (x '' (Finset.range n) = Set.Icc (1 : ℤ) n))
(hxsum : ∀ x : ℕ → ℤ, xsum x = ∑ i : Fin n, x i * x ((i + 1) % n))
: (∃ x : ℕ → ℤ, xset x ∧ xsum x = putnam_1996_b3_solution n) ∧ (∀ x : ℕ → ℤ, xset x → xsum x ≤ putnam_1996_b3_solution n) :=
sorry

open Nat
abbrev putnam_1996_b4_solution : Prop := sorry
-- False
theorem putnam_1996_b4
(matsin : Matrix (Fin 2) (Fin 2) ℝ → Matrix (Fin 2) (Fin 2) ℝ)
(mat1996 : Matrix (Fin 2) (Fin 2) ℝ)
(hmatsin : ∀ A : Matrix (Fin 2) (Fin 2) ℝ, matsin A = ∑' n : ℕ, ((-(1 : ℝ)) ^ n / (2 * n + 1)!) • A ^ (2 * n + 1))
(hmat1996 : mat1996 0 0 = 1 ∧ mat1996 0 1 = 1996 ∧ mat1996 1 0 = 0 ∧ mat1996 1 1 = 1)
: (∃ A : Matrix (Fin 2) (Fin 2) ℝ, matsin A = mat1996) ↔ putnam_1996_b4_solution :=
sorry

abbrev putnam_1996_b5_solution : ℕ → ℕ := sorry
-- (fun n : ℕ => if Even n then (3 * 2 ^ (n / 2) - 2) else (2 ^ ((n + 1) / 2) - 2))
theorem putnam_1996_b5
(n : ℕ)
(STdelta : (Fin n → Fin 2) → Fin n → Fin n → ℤ)
(Sbalanced : (Fin n → Fin 2) → Prop)
(hSTdelta : ∀ S : Fin n → Fin 2, ∀ T1 T2 : Fin n, T1 ≤ T2 → (STdelta S T1 T2 = ∑ i : Set.Icc T1 T2, if S i = 1 then 1 else -1))
(hSbalanced : ∀ S : Fin n → Fin 2, Sbalanced S = ∀ T1 T2 : Fin n, T1 ≤ T2 → (-2 ≤ STdelta S T1 T2 ∧ STdelta S T1 T2 ≤ 2))
: {S : Fin n → Fin 2 | Sbalanced S}.encard = putnam_1996_b5_solution n :=
sorry
