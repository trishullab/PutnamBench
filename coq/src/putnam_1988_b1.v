Require Import ZArith Znumtheory.
Open Scope Z.
Theorem putnam_1988_b1
    : forall (n: Z), n > 3 /\ ~ prime n -> exists (a b c: Z), a > 0 /\ b > 0 /\ c > 0 /\ n = a * b + b * c + c * a + 1.    
Proof. Admitted.
