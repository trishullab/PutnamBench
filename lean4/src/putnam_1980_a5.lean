import Mathlib

/--
Let $P(t)$ be a nonconstant polynomial with real coefficients. Prove that the system of simultaneous equations $0=\int_0^xP(t)\sin t\,dt=\int_0^xP(t)\cos t\,dt$ has only finitely many real solutions $x$.
-/
theorem putnam_1980_a5
    (P : Polynomial ℝ)
    (Pnonconst : P.degree > 0) :
    Set.Finite {x : ℝ |
      0 = (∫ t in (0)..x, P.eval t * Real.sin t) ∧
      0 = (∫ t in (0)..x, P.eval t * Real.cos t)} :=
  sorry
