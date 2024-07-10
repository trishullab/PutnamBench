Require Import Nat List Reals Coquelicot.Coquelicot.
Theorem putnam_2003_b3
    (lcmn := fix lcm_n (args : list nat) : nat :=
        match args with
        | nil => 0%nat
        | h :: args' => div (h * (lcm_n args')) (gcd h (lcm_n args'))
    end)
    (prodn := fix prod_n (m: nat -> R) (n : nat) : R :=
        match n with
        | O => m 0%nat
        | S n' => m n' * prod_n m n'
    end)
    : forall (n: nat), gt n 0 -> INR (fact n) = prodn (fun i => INR (lcmn (seq 0 (div n (i + 1))))) n.
Proof. Admitted.
