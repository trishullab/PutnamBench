Require Import Nat ZArith Znumtheory. 
Theorem putnam_1973_b3
    (p : nat)
    (hp : gt p 1)
    (hprime : forall x : Z, 0 <= x < Z.of_nat p -> prime (x^2 - x + Z.of_nat p))
    : exists! triple : Z * Z * Z, 
        let '(a, b, c) := triple in 
            (b^2 - 4*a*c = 1 /\ 0 < a /\ a <= c /\ -a <= b /\ b < a).
Proof. Admitted.    
