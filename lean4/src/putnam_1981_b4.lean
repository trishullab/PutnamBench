import Mathlib

open Topology Filter Set Polynomial Function

abbrev putnam_1981_b4_solution : Prop := sorry
-- False
/--
Let $V$ be a set of $5$ by $7$ matrices, with real entries and with the property that $rA+sB \in V$ whenever $A,B \in V$ and $r$ and $s$ are scalars (i.e., real numbers). \emph{Prove or disprove} the following assertion: If $V$ contains matrices of ranks $0$, $1$, $2$, $4$, and $5$, then it also contains a matrix of rank $3$. [The rank of a nonzero matrix $M$ is the largest $k$ such that the entries of some $k$ rows and some $k$ columns form a $k$ by $k$ matrix with a nonzero determinant.]
-/
theorem putnam_1981_b4
    (VAB : Set (Matrix (Fin 5) (Fin 7) ℝ) → Prop)
    (Vrank : Set (Matrix (Fin 5) (Fin 7) ℝ) → ℕ → Prop)
    (hVAB : ∀ V, VAB V = (∀ A ∈ V, ∀ B ∈ V, ∀ r s : ℝ, r • A + s • B ∈ V))
    (hVrank : ∀ V k, Vrank V k = ∃ A ∈ V, A.rank = k) :
    putnam_1981_b4_solution ↔
    (∀ V,
      VAB V → Vrank V 0 → Vrank V 1 →
      Vrank V 2 → Vrank V 4 → Vrank V 5 →
    Vrank V 3) :=
  sorry
