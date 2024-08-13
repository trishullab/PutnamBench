Require Import Binomial Reals Coquelicot.Coquelicot.
Open Scope nat_scope.
Theorem putnam_1983_a4
    (k : nat)
    (kpos : k > 0)
    (m : nat := 6 * k - 1)
    (s : R := sum_n_m (fun j => Rmult ((-1) ^ (j + 1)) (Binomial.C m (3 * j - 1))) 1 (2*k - 1))
    : s <> R0.
Proof. Admitted.
