import Mathlib

open Topology Filter

/--
Let $C$ be the set of continuous functions $f : \mathbb{R} \to \mathbb{R}$. Let $T : C \to C$ satisfty the following two properties:
\begin{enumerate}
\item Linearity: $T(af + bg) = aT(f) + bT(g)$ for all $a, b \in \mathbb{R}$ and all $f, g \in C$.
\item Locality: If $f \in C$ and $g \in C$ are identical on some interval $I$, then $T(f)$ and $T(g)$ are also identical on $I$.
\end{enumerate}
Prove that there exists some function $f \in C$ such that $T(g(x)) = f(x)g(x)$ for all $g \in C$.
-/
theorem putnam_1966_a5
(C : Set (ℝ → ℝ))
(hC : C = {f : ℝ → ℝ | Continuous f})
(T : (ℝ → ℝ) → (ℝ → ℝ))
(imageTC : ∀ f ∈ C, T f ∈ C)
(linearT : ∀ a b : ℝ, ∀ f ∈ C, ∀ g ∈ C, T ((fun x => a)*f + (fun x => b)*g) = (fun x => a)*(T f) + (fun x => b)*(T g))
(localT : ∀ r s : ℝ, r ≤ s → ∀ f ∈ C, ∀ g ∈ C, (∀ x ∈ Set.Icc r s, f x = g x) → (∀ x ∈ Set.Icc r s, T f x = T g x))
: ∃ f ∈ C, ∀ g ∈ C, T g = f * g :=
sorry
