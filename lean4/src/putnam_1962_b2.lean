import Mathlib

open MeasureTheory

--Note: The original problem requires a function to be exhibited, but in the official archives the solution depends on an enumeration of the rationals, so we modify the problem to be an existential statement.
/--
Let $\mathbb{S}$ be the set of all subsets of the natural numbers. Prove the existence of a function $f : \mathbb{R} \to \mathbb{S}$ such that $f(a) \subset f(b)$ whenever $a < b$.
-/
theorem putnam_1962_b2
: ∃ f : ℝ → Set ℕ+, ∀ a b : ℝ, a < b → f a ⊂ f b :=
sorry
