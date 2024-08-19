import Mathlib
open BigOperators

open Function Set

theorem putnam_2013_a2
(S : Set ℤ)
(hS : S = {n : ℤ | n > 0 ∧ ¬∃ m : ℤ, m ^ 2 = n})
(P : ℤ → List ℤ → Prop)
(hP : P = fun n : ℤ => fun a : List ℤ => a.length > 0 ∧ n < a[0]! ∧
(∃ m : ℤ, m ^ 2 = n * a.prod) ∧ (∀ i : Fin (a.length - 1), a[i] < a[i+(1:ℕ)]))
(T : ℤ → Set ℤ)
(hT : T = fun n : ℤ => {m : ℤ | ∃ a : List ℤ, P n a ∧ a[a.length - 1]! = m})
(f : ℤ → ℤ)
(hf : ∀ n ∈ S, ((∃ r ∈ T n, f n = r) ∧ ∀ r ∈ T n, f n ≤ r))
: InjOn f S :=
sorry
