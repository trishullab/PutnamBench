import Mathlib
open BigOperators

open MeasureTheory

-- TODO: (George), does not compile properly on my version, double check when migrating to v4.9.0
theorem putnam_1962_a3
(A B C A' B' C' P Q R : EuclideanSpace ℝ (Fin 2))
(k : ℝ)
(hk : k > 0)
(hABC : ¬Collinear ℝ {A, B, C})
(hA' : A' ∈ segment ℝ B C ∧ Euclidean.dist C A' / Euclidean.dist A' B = k)
(hB' : B' ∈ segment ℝ C A ∧ Euclidean.dist A B' / Euclidean.dist B' C = k)
(hC' : C' ∈ segment ℝ A B ∧ Euclidean.dist B C' / Euclidean.dist C' A = k)
(hP : P ∈ segment ℝ B B' ∧ P ∈ segment ℝ C C')
(hQ : Q ∈ segment ℝ C C' ∧ Q ∈ segment ℝ A A')
(hR : R ∈ segment ℝ A A' ∧ R ∈ segment ℝ B B')
: (volume (convexHull ℝ {P, Q, R})).toReal / (volume (convexHull ℝ {A, B, C})).toReal = (k - 1)^2 / (k^2 + k + 1) :=
sorry
