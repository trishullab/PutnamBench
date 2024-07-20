import Mathlib
open BigOperators

open Filter Topology

-- Note: uses (ℕ → Fin 10) instead of (Fin m → Fin 10)
theorem putnam_1994_a6
(f : Fin 10 → Equiv.Perm ℤ)
(mijcomp : ℕ → (ℕ → Fin 10) → ℕ → (ℤ → ℤ))
(F : Finset (ℤ → ℤ))
(hf: ∀ n : ℤ, ∃ m : ℕ, ∃ i : ℕ → Fin 10, m ≥ 1 ∧ (mijcomp m i 0) 0 = n)
(hmijcomp : ∀ m ≥ 1, ∀ (i : ℕ → Fin 10) (j : Fin m), mijcomp m i j = if (j = m - 1) then (f (i j) : ℤ → ℤ) else (f (i j) ∘ mijcomp m i (j + 1)))
(hF : F = {g : ℤ → ℤ | ∃ e : Fin 10 → Fin 2, g = (f 0)^[e 0] ∘ (f 1)^[e 1] ∘ (f 2)^[e 2] ∘ (f 3)^[e 3] ∘ (f 4)^[e 4] ∘ (f 5)^[e 5] ∘ (f 6)^[e 6] ∘ (f 7)^[e 7] ∘ (f 8)^[e 8] ∘ (f 9)^[e 9]})
: ∀ A : Finset ℤ, A.Nonempty → {g ∈ F | g '' A = A}.encard ≤ 512 :=
sorry
