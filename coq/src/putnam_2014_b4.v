Require Import Reals Coquelicot.Coquelicot.
Open Scope C.
Theorem putnam_2014_b4
    (sumnC := fix sum_n_C (m: nat -> C) (n : nat) : C :=
        match n with
        | O => m 0%nat
        | S n' => m n' + sum_n_C m n'
    end)
    : forall (n: nat) (r: C), sumnC (fun k => (2 * ((INR k) * (INR n - INR k)) * r ^ k)) n = 0 <-> exists (q: R), r = RtoC q. 
Proof. Admitted.
