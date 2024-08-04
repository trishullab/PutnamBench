Require Import Reals ZArith Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1995_b4_solution : Z * Z * Z * Z := (3%Z,1%Z,5%Z,2%Z).
Theorem putnam_1995_b4
    (contfrac : R)
    (hcontfrac : contfrac = 2207 - 1/contfrac)
    : let (abc, d) := putnam_1995_b4_solution in let (ab, c) := abc in let (a, b) := ab in 
    pow contfrac (1 / 8) = (IZR a + IZR b * sqrt (IZR c))/IZR d.
Proof. Admitted.
