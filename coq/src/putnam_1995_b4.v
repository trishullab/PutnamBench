Require Import Reals ZArith Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1995_b4_solution (a b c d: Z) := (a, b, c, d) = (3%Z,1%Z,5%Z,2%Z).
Theorem putnam_1995_b4
    : exists (a b c d: Z), exists (contfrac: R), contfrac = 2207 - 1 / contfrac -> pow contfrac (1 / 8) = (IZR a + IZR b * sqrt (IZR c))/IZR d <-> putnam_1995_b4_solution a b c d.
Proof. Admitted.
