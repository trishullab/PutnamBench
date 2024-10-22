import Mathlib

open Classical Filter Topology

-- Note: uses (ℕ → Fin 10) instead of (Fin m → Fin 10)
/--
Let $f_1,\dots,f_{10}$ be bijections of the set of integers such that for each integer $n$, there is some composition $f_{i_1} \circ f_{i_2} \circ \cdots \circ f_{i_m}$ of these functions (allowing repetitions) which maps 0 to $n$. Consider the set of $1024$ functions $\mathcal{F}=\{f_1^{e_1} \circ f_2^{e_2} \circ \cdots \circ f_{10}^{e_{10}}\}$, $e_i=0$ or $1$ for $1 \leq i \leq 10$. ($f_i^0$ is the identity function and $f_i^1=f_i$.) Show that if $A$ is any nonempty finite set of integers, then at most $512$ of the functions in $\mathcal{F}$ map $A$ to itself.
-/
theorem putnam_1994_a6
(f : Fin 10 → Equiv.Perm ℤ)
(mijcomp : ℕ → (ℕ → Fin 10) → ℕ → (ℤ → ℤ))
(F : Finset (ℤ → ℤ))
(hf: ∀ n : ℤ, ∃ m : ℕ, ∃ i : ℕ → Fin 10, m ≥ 1 ∧ (mijcomp m i 0) 0 = n)
(hmijcomp : ∀ m ≥ 1, ∀ (i : ℕ → Fin 10) (j : Fin m), mijcomp m i j = if (j = m - 1) then (f (i j) : ℤ → ℤ) else (f (i j) ∘ mijcomp m i (j + 1)))
(hF : F = {g : ℤ → ℤ | ∃ e : Fin 10 → Fin 2, g = (f 0)^[e 0] ∘ (f 1)^[e 1] ∘ (f 2)^[e 2] ∘ (f 3)^[e 3] ∘ (f 4)^[e 4] ∘ (f 5)^[e 5] ∘ (f 6)^[e 6] ∘ (f 7)^[e 7] ∘ (f 8)^[e 8] ∘ (f 9)^[e 9]})
: ∀ A : Finset ℤ, A.Nonempty → {g ∈ F | g '' A = A}.card ≤ 512 :=
sorry
