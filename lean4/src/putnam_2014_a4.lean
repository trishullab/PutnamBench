import Mathlib

open Topology Filter Nat

noncomputable abbrev putnam_2014_a4_solution : ℝ := sorry
-- 1 / 3
/--
Suppose $X$ is a random variable that takes on only nonnegative integer values, with $E\left[X\right]=1$, $E\left[X^2\right]=2$, and $E\left[X^3\right]=5$. (Here $E\left[Y\right]$ denotes the expectation of the random variable $Y$.) Determine the smallest possible value of the probability of the event $X=0$.
-/
theorem putnam_2014_a4
(Xrandvar : (ℕ → ℝ) → Prop)
(hXrandvar : Xrandvar = (fun X : ℕ → ℝ => (∀ n : ℕ, X n ∈ Set.Icc 0 1) ∧ ∑' n : ℕ, X n = 1))
(E : (ℕ → ℝ) → (ℕ → ℝ) → ℝ)
(hE : E = (fun (X : ℕ → ℝ) (f : ℕ → ℝ) => ∑' n : ℕ, f n * X n))
: sInf {X0 : ℝ | ∃ X : ℕ → ℝ, Xrandvar X ∧ E X (fun x : ℕ => x) = 1 ∧ E X (fun x : ℕ => x ^ 2) = 2 ∧ E X (fun x : ℕ => x ^ 3) = 5 ∧ X0 = X 0} = putnam_2014_a4_solution :=
sorry
