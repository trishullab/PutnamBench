Require Import Binomial Reals Znumtheory Coquelicot.Coquelicot.
Open Scope nat_scope.
Theorem putnam_1983_a4
    (m: nat)
    (hm : m mod 6 = 5)
    : sum_n (fun n => (if (eq_nat_dec (n mod 3) 2) then Binomial.C m n else R0)) (m-2) <> R0.
Proof. Admitted.
