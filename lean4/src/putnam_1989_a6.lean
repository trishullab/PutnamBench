import Mathlib

open Nat

/--
Let $\alpha=1+a_1x+a_2x^2+\cdots$ be a formal power series with coefficients in the field of two elements. Let
\[
a_n =
\begin{cases}
1 & \parbox{2in}{if every block of zeros in the binary expansion of $n$ has an even number of zeros in the block} \\[.3in]
0 & \text{otherwise.}
\end{cases}
\]
(For example, $a_{36}=1$ because $36=100100_2$ and $a_{20}=0$ because $20=10100_2.$) Prove that $\alpha^3+x\alpha+1=0.$
-/
theorem putnam_1989_a6
(F : Type*) [Field F] [Fintype F]
(hF : Fintype.card F = 2)
(α : PowerSeries F)
(bin_fun : List ℕ → Prop)
(bin_fun_def : bin_fun = λ bin => ∀ i j : Fin bin.length, i < j → bin.get i = 1 → bin.get j = 1 → (∀ k, i < k → k < j → bin.get k = 0) → Even ((j : ℕ) - (i : ℕ) - 1))
(hα : ∀ n : ℕ, let bin := [1] ++ (digits 2 n) ++ [1]; (PowerSeries.coeff F n α = 1 ∧ bin_fun bin) ∨ (PowerSeries.coeff F n α = 0 ∧ ¬bin_fun bin))
: (α ^ 3 + PowerSeries.X * α + 1 = 0) :=
sorry
