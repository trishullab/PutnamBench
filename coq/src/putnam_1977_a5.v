Require Import Binomial Reals Znumtheory Coquelicot.Coquelicot.
Open Scope nat_scope.
Theorem putnam_1977_a5 
    (p n m : nat)
    (hp : prime (Z.of_nat p))
    (hmn : m >= n)
    : (Z.to_nat (floor (Binomial.C (p*m) (p*n)))) = (Z.to_nat (floor (Binomial.C m n))) mod p.
Proof. Admitted.
