import Mathlib
open BigOperators


-- Note: The actual problem asks to "find" such polynomials as well - but the solution does not give a set of all possible solutions
-- So we would need to do the analysis ourselves, the following formalization should work.
abbrev putnam_1999_a1_solution : Prop := sorry
-- True
theorem putnam_1999_a1
: putnam_1999_a1_solution ↔ ∃ f g h : Polynomial ℝ, ∀ x : ℝ, |f.eval x| - |g.eval x| + h.eval x = if x < -1 then -1 else (if (x ≤ 0) then 3 * x + 2 else -2 * x + 2) :=
sorry


theorem putnam_1999_a2
(p : Polynomial ℝ)
(hp : ∀ x : ℝ, p.eval x ≥ 0)
: ∃ k : ℕ, k > 0 ∧ ∃ f : Fin k → Polynomial ℝ,
∀ x : ℝ, p.eval x = ∑ j : Fin k, ((f j).eval x) ^ 2 :=
sorry

open Filter Topology Metric

theorem putnam_1999_a3
(f : ℝ → ℝ := fun x => 1/(1 - 2 * x - x^2))
(a : ℕ → ℝ)
(hf : ∃ ε > 0, ∀ x ∈ ball 0 ε, Tendsto (λ n => ∑ i in Finset.range n, (a n) * x^n) atTop (𝓝 (f x)))
: ∀ n : ℕ, ∃ m : ℕ, (a n)^2 + (a (n + 1))^2 = a m :=
sorry

-- Note: This is done assuming that the series converges, otherwise it is unclear in which order to sum. The problem statement assumes convergence
noncomputable abbrev putnam_1999_a4_solution : ℝ := sorry
-- 9/32
theorem putnam_1999_a4
: Tendsto (fun i => ∑ m in Finset.range i, ∑' n : ℕ, (((m + 1)^2*(n+1))/(3^(m + 1) * ((n+1)*3^(m + 1) + (m + 1)*3^(n+1))) : ℝ)) atTop (𝓝 putnam_1999_a4_solution) :=
sorry

theorem putnam_1999_a5
: ∃ C : ℝ, ∀ p : Polynomial ℝ, p.degree = 1999 → ‖p.eval 0‖ ≤ C * ∫ x in (-1)..1, ‖p.eval x‖ :=
sorry

theorem putnam_1999_a6
(a : ℕ → ℝ)
(ha1 : a 1 = 1)
(ha2 : a 2 = 2)
(ha3 : a 3 = 24)
(hange4 : ∀ n : ℕ, n ≥ 4 → a n = (6 * (a (n - 1))^2 * (a (n - 3)) - 8 * (a (n - 1)) * (a (n - 2))^2)/(a (n - 2) * a (n - 3)))
: ∀ n, n ≥ 1 → (∃ k : ℤ, a n = k * n) :=
sorry

theorem putnam_1999_b2
(P Q : Polynomial ℂ)
(hQ : Q.natDegree = 2)
(hP : ∀ x : ℂ, P.eval x = (Q.eval x) * (Polynomial.derivative^[2] P).eval x)
: (∃ x1 x2 : ℂ, x1 ≠ x2 ∧ P.eval x1 = 0 ∧ P.eval x2 = 0) → (∃ f : Fin (P.natDegree) → ℂ, (∀ i j : Fin (P.natDegree), i ≠ j → f i ≠ f j) ∧ (∀ i : Fin (P.natDegree), P.eval (f i) = 0)) :=
sorry

abbrev putnam_1999_b3_solution : ℝ := sorry
-- 3
theorem putnam_1999_b3
(A : Set (ℝ × ℝ) := {xy : ℝ × ℝ | 0 ≤ xy.1 ∧ xy.1 < 1 ∧ 0 ≤ xy.2 ∧ xy.2 < 1})
(S : ℝ → ℝ → ℝ := fun x y => ∑' m : ℕ, ∑' n : ℕ, if (m > 0 ∧ n > 0 ∧ 1/2 ≤ m/n ∧ m/n ≤ 2) then x^m * y^n else 0)
: Tendsto (fun xy : (ℝ × ℝ) => (1 - xy.1 * xy.2^2) * (1 - xy.1^2 * xy.2) * (S xy.1 xy.2)) (𝓝[A] ⟨1,1⟩) (𝓝 putnam_1999_b3_solution) :=
sorry

theorem putnam_1999_b4
(f : ℝ → ℝ)
(hf : ContDiff ℝ 3 f)
(hpos: ∀ n ≤ 3, ∀ x : ℝ, iteratedDeriv n f x > 0)
(hle : ∀ x : ℝ, iteratedDeriv 3 f x ≤ f x)
: ∀ x : ℝ, deriv f x < 2 * (f x) :=
sorry

noncomputable abbrev putnam_1999_b5_solution : ℕ → ℝ := sorry
-- fun n => 1 - n^2/4
theorem putnam_1999_b5
(n : ℕ)
(hn : n ≥ 3)
(theta : ℝ := 2 * Real.pi / n)
(A : Matrix (Fin n) (Fin n) ℝ := fun j k => Real.cos ((j.1 + 1) * theta + (k.1 + 1) * theta))
: ((1 : Matrix (Fin n) (Fin n) ℝ) + A).det = putnam_1999_b5_solution n :=
sorry

theorem putnam_1999_b6
(S : Finset ℤ)
(hSgt : ∀ s : ℤ, s ∈ S → s > 1)
(hSgcd : ∀ n : ℤ, ∃ s : S, Int.gcd s n = 1 ∨ Int.gcd s n = (s : ℤ))
: ∃ s t : S, Prime (Int.gcd s t) :=
sorry

