import Mathlib

open Nat Topology Filter

-- Note: uses (ℕ → Set.Icc 1 n → Bool) instead of (Set.Icc 0 n → Set.Icc 1 n → Bool)
/--
A certain locker room contains $n$ lockers numbered $1,2,3,\cdots,n$ and all are originally locked. An attendant performs a sequence of operations $T_1,T_2,\cdots,T_n$ whereby with the operation $T_k$, $1 \leq k \leq n$, the condition of being locked or unlocked is changed for all those lockers and only those lockers whose numbers are multiples of $k$. After all the $n$ operations have been performed it is observed that all lockers whose numbers are perfect squares (and only those lockers) are now open or unlocked. Prove this mathematically.
-/
theorem putnam_1967_b4
(n : ℕ)
(lockers : ℕ → Set.Icc 1 n → Bool)
(npos : n ≥ 1)
(hlockers0 : ∀ i : Set.Icc 1 n, lockers 0 i = false)
(hlockersk : ∀ k ∈ Set.Icc 1 n, ∀ i : Set.Icc 1 n, lockers k i = if k ∣ i then !(lockers (k - 1) i) else (lockers (k - 1) i))
: ∀ i : Set.Icc 1 n, lockers n i ↔ (∃ j : ℤ, j ^ 2 = i) :=
sorry
