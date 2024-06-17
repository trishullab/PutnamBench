import Mathlib

open BigOperators

theorem putnam_1965_a2
: ∀ n > 0, ∑ r in Finset.Icc 0 ((n - 1)/2), ((n - 2*r) * Nat.choose n r / (n : ℚ))^2 = (Nat.choose (2*n - 2) (n - 1))/(n : ℚ) :=
sorry

open Topology
open Filter
open Complex

theorem putnam_1965_a3
(a : ℕ → ℝ)
(α : ℝ)
: Tendsto (fun n : ℕ => (∑ k in Finset.Icc 1 n, exp (I * a k))/n) ⊤ (𝓝 α) ↔
Tendsto (fun n : ℕ => (∑ k in Finset.Icc 1 n, exp (I * a (k^2)))/(n^2 : ℂ)) ⊤ (𝓝 α) :=
sorry

theorem putnam_1965_a4
[Fintype G]
[Fintype B]
(dances : G → B → Prop)
(h : (¬∃ b : B, ∀ g : G, dances g b) ∧ ∀ g : G, ∃ b : B, dances g b)
: ∃ g h : G, ∃ b c : B, dances g b ∧ dances h c ∧ ¬dances h b ∧ ¬dances g c :=
sorry

abbrev putnam_1965_a5_solution : ℕ → ℕ := sorry
-- fun n => 2^(n - 1)
theorem putnam_1965_a5
: ∀ n > 0, {p ∈ permsOfFinset (Finset.Icc 1 n) | ∀ m ∈ Finset.Icc 2 n, ∃ k ∈ Finset.Ico 1 m, p m = p k + 1 ∨ p m = p k - 1}.ncard = putnam_1965_a5_solution n :=
sorry

theorem putnam_1965_a6
(u v m : ℝ)
(hm : m > 1)
(huv : u ≥ 0 ∧ v ≥ 0)
: (∃! p : ℝ × ℝ, u*p.1 + v*p.2 = 1 ∧ (p.1)^m + (p.2)^m = 1) ↔ ∃ n : ℝ, u^n + v^n = 1 ∧ m^(-(1 : ℤ)) + n^(-(1 : ℤ)) = 1 :=
sorry

theorem putnam_1965_b2
(n : ℕ)
(hn : n > 1)
(won : Fin n → Fin n → Bool)
(hirrefl : ∀ i : Fin n, won i i = False)
(hantisymm : ∀ i j : Fin n, i ≠ j → won i j = ¬won j i)
(w : Fin n → ℤ := fun r : Fin n => ∑ j : Fin n, (if won r j then 1 else 0))
(l : Fin n → ℤ := fun r : Fin n => n - 1 - w r)
: ∑ r : Fin n, (w r)^2 = ∑ r : Fin n, (l r)^2 :=
sorry

theorem putnam_1965_b3
: {(a, b, c) : ℕ × ℕ × ℕ | a > 0 ∧ a ≤ b ∧ a^2 + b^2 = c^2 ∧ a*b/(2 : ℚ) = 2*(a + b + c)}.ncard = 3 :=
sorry

noncomputable abbrev putnam_1965_b4_solution : ((((ℝ → ℝ) → (ℝ → ℝ)) × ((ℝ → ℝ) → (ℝ → ℝ))) × ((Set ℝ) × (ℝ → ℝ))) := sorry
-- ((fun h : ℝ → ℝ => h + (fun x : ℝ => x), fun h : ℝ → ℝ => h + (fun _ : ℝ => 1)), ({x : ℝ | x ≥ 0}, Real.sqrt))
theorem putnam_1965_b4
(f : ℕ → ℝ → ℝ)
(hf : ∀ n > 0, f n = fun x : ℝ => (∑ i in Finset.Icc 0 (n/2), (Nat.choose n (2*i))*x^i) / (∑ i in Finset.Icc 0 ((n - 1)/2), (Nat.choose n (2*i + 1))*x^i))
: let ⟨⟨p, q⟩, ⟨s, g⟩⟩ := putnam_1965_b4_solution; ∀ n > 0, f (n + 1) = p (f n) / q (f n) ∧
s = {x : ℝ | ∃ l : ℝ, Tendsto (fun n : ℕ => f n x) ⊤ (𝓝 l)} ∧ ∀ x ∈ s, Tendsto (fun n : ℕ => f n x) ⊤ (𝓝 (g x)) :=
sorry

open SimpleGraph.Walk

theorem putnam_1965_b5
[Fintype K]
(V : ℕ := Nat.card K)
(E : ℕ)
(hE: 4*E ≤ V^2)
: ∃ G : SimpleGraph K, G.edgeSet.ncard = E ∧ ∀ a : K, ∀ w : G.Walk a a, w.length ≠ 3 :=
sorry

theorem putnam_1965_b6
(A B C D : Fin 2 → ℝ)
(S : Set (Fin 2 → ℝ) := {A, B, C, D})
(hdistinct : S.ncard = 4)
(through : (ℝ × (Fin 2 → ℝ)) → (Fin 2 → ℝ) → Prop := fun (r, P) => fun Q => Euclidean.dist P Q = r)
(hABCD : ∀ r s : ℝ, ∀ P Q : Fin 2 → ℝ, through (r, P) A ∧ through (r, P) B ∧ through (s, Q) C ∧ through (s, Q) D →
∃ I : Fin 2 → ℝ, through (r, P) I ∧ through (s, Q) I)
: Collinear ℝ S ∨ ∃ r : ℝ, ∃ P : Fin 2 → ℝ, ∀ Q ∈ S, through (r, P) Q :=
sorry
