import Mathlib

open Filter Topology

/--
Let $G$ be a group with identity $e$ and $\phi:G\rightarrow G$ a function such that \[\phi(g_1)\phi(g_2)\phi(g_3)=\phi(h_1)\phi(h_2)\phi(h_3)\] whenever $g_1g_2g_3=e=h_1h_2h_3$. Prove that there exists an element $a\in G$ such that $\psi(x)=a\phi(x)$ is a homomorphism (i.e. $\psi(xy)=\psi(x)\psi(y)$ for all $x,y\in G$).
-/
theorem putnam_1997_a4
(G : Type*)
[Group G]
(φ : G → G)
(hφ : ∀ g1 g2 g3 h1 h2 h3 : G, (g1 * g2 * g3 = 1 ∧ h1 * h2 * h3 = 1) → φ g1 * φ g2 * φ g3 = φ h1 * φ h2 * φ h3)
: ∃ a : G, let ψ := fun g => a * φ g; ∀ x y : G, ψ (x * y) = ψ x * ψ y :=
sorry
