Require Import Reals List Rtrigo_def Coquelicot.Derive.
Open Scope R.
Definition min_sol : nat := 18.
Theorem putnam_2023_a1
    (n: nat)
    (hn : gt n 0)
    : Rabs ((Derive_n (fun x =>
        let f_i i := cos (INR i * x) in
        let coeffs := map f_i (seq 1 n) in
        fold_right Rmult 1 coeffs) 2) 0) > 2023 ->
    (n >= min_sol)%nat /\
    Rabs ((Derive_n (fun x =>
        let f_i i := cos (INR i * x) in
        let coeffs := map f_i (seq 1 min_sol) in
        fold_right Rmult 1 coeffs) 2) 0) > 2023. 
Proof. Admitted.

