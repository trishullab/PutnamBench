import Mathlib
open BigOperators

open Matrix

-- Note: This proof statement strays a bit from the problem statement since it manually checks a condition for acuteness based on side lengths.
theorem putnam_2012_a1
(d : Fin 12 → ℝ)
(hd : ∀ i : Fin 12, d i ∈ Set.Ioo 1 12)
: ∃ i j k : Fin 12, i ≠ j ∧ i ≠ k ∧ j ≠ k ∧ d k ≥ d i ∧ d k ≥ d j ∧ (d i) ^ 2 + (d j) ^ 2 > (d k) ^ 2 :=
sorry

theorem putnam_2012_a2
(S : Type*) [CommSemigroup S]
(a b c : S)
(hS : ∀ x y : S, ∃ z : S, x * z = y)
(habc : a * c = b * c)
: a = b :=
sorry

open Function

-- Note: uses (ℝ → ℝ) instead of (Set.Icc (-1 : ℝ) 1 → ℝ)
noncomputable abbrev putnam_2012_a3_solution : ℝ → ℝ := sorry
-- fun x : ℝ => Real.sqrt (1 - x^2)
theorem putnam_2012_a3
(S : Set ℝ := Set.Icc (-1 : ℝ) 1)
(hf : (ℝ → ℝ) → Prop := fun f : ℝ → ℝ => ContinuousOn f S ∧
(∀ x ∈ S, f x = ((2 - x^2)/2)*f (x^2/(2 - x^2))) ∧ f 0 = 1 ∧
(∃ y : ℝ, leftLim (fun x : ℝ => (f x)/Real.sqrt (1 - x)) 1 = y))
: hf putnam_2012_a3_solution ∧ ∀ f : ℝ → ℝ, hf f → ∀ x ∈ S, f x = putnam_2012_a3_solution x :=
sorry


theorem putnam_2012_a4
(q r : ℤ)
(A B : Fin 2 → ℝ)
(T : Set ℝ)
(S : Set ℤ)
(qpos : q > 0)
(ABlt : A 0 < A 1 ∧ B 0 < B 1)
(hT : T = {x : ℝ | ∃ b m : ℤ, ((b : ℝ) ∈ Set.Icc (B 0) (B 1)) ∧ (x = b + m * q)})
(hS : S = {a : ℤ | ((a : ℝ) ∈ Set.Icc (A 0) (A 1)) ∧ (∃ t ∈ T, r * a = t)})
: ((A 1 - A 0) * (B 1 - B 0) < q) → (∃ n : ℕ, ∃ a1 d : ℝ, n > 2 ∧ {s : ℝ | s = round s ∧ round s ∈ S} = (Set.Icc (A 0) (A 1)) ∩ {x : ℝ | ∃ i : Fin n, x = a1 + i * d}) :=
sorry

abbrev putnam_2012_a5_solution : Set (ℕ × ℕ) := sorry
-- {q | let ⟨n, _⟩ := q; n = 1} ∪ {(2,2)}
theorem putnam_2012_a5
(n p : ℕ)
(hn : n > 0)
(hp : Nat.Prime p)
{F : Type*} [Field F] [Fintype F]
(hK : Fintype.card F = p)
(G : Matrix (Fin n) (Fin n) F →  (Fin n → F) → (Fin n → F) → (Fin n → F))
(hG : ∀ M : Matrix (Fin n) (Fin n) F, ∀ v x : (Fin n → F), G M v x = v + mulVec M x)
: (n, p) ∈ putnam_2012_a5_solution ↔
∃ M : Matrix (Fin n) (Fin n) F,
∃ v : (Fin n → F),
¬(∃ i j : Finset.range (p^n), i ≠ j ∧ (G M v)^[i + 1] 0 = (G M v)^[j + 1] 0) :=
sorry

-- Note: this formalization differs from the original problem wording in only allowing axis-aligned rectangles. The problem is solvable given this weaker hypothesis.
abbrev putnam_2012_a6_solution : Prop := sorry
-- True
theorem putnam_2012_a6
(p : ((ℝ × ℝ) → ℝ) → Prop := fun f ↦ Continuous f ∧ ∀ x1 x2 y1 y2 : ℝ, x2 > x1 → y2 > y1 → (x2 - x1) * (y2 - y1) = 1 → ∫ x in x1..x2, ∫ y in y1..y2, f (x, y) = 0)
: ((∀ f : (ℝ × ℝ) → ℝ, ∀ x y : ℝ, p f → f (x, y) = 0) ↔ putnam_2012_a6_solution) :=
sorry

open Real
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

abbrev putnam_2012_b3_solution : Prop := sorry
-- True
theorem putnam_2012_b3
(nmatchupsgames : (n : ℕ) → (Fin (2 * n - 1) → (Fin (2 * n) → Fin (2 * n))) → Prop := (fun (n : ℕ) (matchups : Fin (2 * n - 1) → (Fin (2 * n) → Fin (2 * n))) => ∀ d : Fin (2 * n - 1), ∀ t : Fin (2 * n), matchups d t ≠ t ∧ matchups d (matchups d t) = t))
(nmatchupsall : (n : ℕ) → (Fin (2 * n - 1) → (Fin (2 * n) → Fin (2 * n))) → Prop  := (fun (n : ℕ) (matchups : Fin (2 * n - 1) → (Fin (2 * n) → Fin (2 * n))) => ∀ t1 t2 : Fin (2 * n), t1 ≠ t2 → (∃ d : Fin (2 * n - 1), matchups d t1 = t2)))
(nmatchupswins : (n : ℕ) → (Fin (2 * n - 1) → (Fin (2 * n) → Fin (2 * n))) → (Fin (2 * n - 1) → (Fin (2 * n) → Bool)) → Prop := (fun (n : ℕ) (matchups : Fin (2 * n - 1) → (Fin (2 * n) → Fin (2 * n))) (wins : Fin (2 * n - 1) → (Fin (2 * n) → Bool)) => ∀ d : Fin (2 * n - 1), ∀ t : Fin (2 * n), wins d t = !(wins d (matchups d t))))
(nmatchupswinschoices : (n : ℕ) → (Fin (2 * n - 1) → (Fin (2 * n) → Fin (2 * n))) → (Fin (2 * n - 1) → (Fin (2 * n) → Bool)) → Prop := (fun (n : ℕ) (matchups : Fin (2 * n - 1) → (Fin (2 * n) → Fin (2 * n))) (wins : Fin (2 * n - 1) → (Fin (2 * n) → Bool)) => ∃ choices : Fin (2 * n - 1) → Fin (2 * n), (∀ d : Fin (2 * n - 1), wins d (choices d)) ∧ Function.Injective choices))
: (∀ n ≥ 1, ∀ (matchups : Fin (2 * n - 1) → (Fin (2 * n) → Fin (2 * n))) (wins : Fin (2 * n - 1) → (Fin (2 * n) → Bool)), (nmatchupsgames n matchups ∧ nmatchupsall n matchups ∧ nmatchupswins n matchups wins) → nmatchupswinschoices n matchups wins) ↔ putnam_2012_b3_solution :=
sorry

open Real Topology Filter
noncomputable abbrev putnam_2012_b4_solution : Prop := True
-- True
theorem putnam_2012_b4
(a : ℕ → ℝ)
(ha0 : a 0 = 1)
(han : ∀ n : ℕ, a (n + 1) = a n + exp (-a n))
: ((∃ L : ℝ, Tendsto (fun n ↦ a n - Real.log n) ⊤ (𝓝 L)) ↔ putnam_2012_b4_solution) :=
sorry

-- Comment for putnam_2012_b5: This formalization uses sSup instead of maximum for the right-hand side of the goal.
theorem putnam_2012_b5
(g1 g2 : ℝ → ℝ)
(hgim : ∀ x : ℝ, g1 x ≥ 1 ∧ g2 x ≥ 1)
(hgbd : ∃ B1 B2 : ℝ, ∀ x : ℝ, g1 x ≤ B1 ∧ g2 x ≤ B2)
: ∃ h1 h2 : ℝ → ℝ, ∀ x : ℝ, sSup {((g1 s)^x * (g2 s)) | s : ℝ} = sSup {(x * (h1 t) + h2 t) | t : ℝ} :=
sorry

theorem putnam_2012_b6
(p : ℕ)
(hpodd : Odd p)
(hpprime : Nat.Prime p)
(hpmod3 : p ≡ 2 [MOD 3])
(P : Equiv.Perm (Fin p))
(hP : ∀ i : Fin p, P i = (i * i * i))
: Equiv.Perm.signAux P = 1 ↔ (p ≡ 3 [MOD 4]) :=
sorry
