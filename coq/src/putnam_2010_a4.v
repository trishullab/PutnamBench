Require Import Reals Znumtheory.
Open Scope Z.
Theorem putnam_2010_a4
    : forall (n: Z), n > 0 -> ~ prime (10^(10^(10^n)) + 10^(10^n) + 10^n - 1). 
Proof. Admitted.
