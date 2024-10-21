import Mathlib

open Matrix Function Real Topology Filter

/--
Let $p$ be an odd prime number such that $p \equiv 2 \pmod{3}$. Define a permutation $\pi$ of the residue classes modulo $p$ by $\pi(x) \equiv x^3 \pmod{p}$. Show that $\pi$ is an even permutation if and only if $p \equiv 3 \pmod{4}$.
-/
theorem putnam_2012_b6
(p : ℕ)
(hpodd : Odd p)
(hpprime : Nat.Prime p)
(hpmod3 : p ≡ 2 [MOD 3])
(P : Equiv.Perm (Fin p))
(hP : ∀ i : Fin p, P i = (i * i * i))
: Equiv.Perm.signAux P = 1 ↔ (p ≡ 3 [MOD 4]) :=
sorry
