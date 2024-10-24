import Mathlib

open Set Nat Polynomial

abbrev putnam_1974_a6_solution : ℕ := sorry
-- 25
/--
Given $n$, let $k(n)$ be the minimal degree of any monic integral polynomial $f$ such that the value of $f(x)$ is divisible by $n$ for every integer $x$. Find the value of $k(1000000)$.
-/
theorem putnam_1974_a6
(hdivnallx : Polynomial ℤ → Prop)
(hdivnallx_def : hdivnallx = fun f => Monic f ∧ (∀ x : ℤ, (10^6 : ℤ) ∣ f.eval x))
: sInf {d : ℕ | ∃ f : Polynomial ℤ, hdivnallx f ∧ d = f.natDegree} = putnam_1974_a6_solution :=
sorry
