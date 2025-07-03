import Mathlib

noncomputable abbrev putnam_2010_a1_solution : ℕ → ℕ := sorry
-- (fun n : ℕ => Nat.ceil ((n : ℝ) / 2))
/--
Given a positive integer $n$, what is the largest $k$ such that the numbers $1,2,\dots,n$ can be put into $k$ boxes so that the sum of the numbers in each box is the same? [When $n=8$, the example $\{1,2,3,6\},\{4,8\},\{5,7\}$ shows that the largest $k$ is \emph{at least} $3$.]
-/
theorem putnam_2010_a1
    (n : ℕ)
    (kboxes : ℕ → Prop)
    (npos : n > 0)
    (hkboxes : ∀ k : ℕ, kboxes k =
      (∃ boxes : Finset.Icc 1 n → Fin k, ∀ i j : Fin k,
        ∑ x ∈ Finset.univ.filter (boxes · = i), (x : ℕ) =
        ∑ x ∈ Finset.univ.filter (boxes · = j), (x : ℕ))) :
    IsGreatest kboxes (putnam_2010_a1_solution n) :=
  sorry
