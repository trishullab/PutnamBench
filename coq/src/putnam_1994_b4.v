Require Import Nat List Reals Coquelicot.Coquelicot. 
Import ListNotations.
Open Scope R.
Theorem putnam_1994_b4 
    (gcdn := fix gcd_n (args : list nat) : nat :=
        match args with
        | nil => 0%nat
        | h :: args' => gcd h (gcd_n args')
    end)
    (Mmultn := fix Mmult_n {T : Ring} {n : nat} (A : matrix n n) (p : nat) :=
        match p with
        | O => A
        | S p' => @Mmult T n n n A (Mmult_n A p')
    end)
    (A := mk_matrix 2 2 (fun i j => 
        match i, j with
        | 0, 0 => 3 | 0, 1 => 2
        | 1, 0 => 4 | 1, 1 => 3
        | _, _ => 0
    end))
    (I := mk_matrix 2 2 (fun i j => 
        match i, j with
        | 0, 0 => 1 | 0, 1 => 0
        | 1, 0 => 0 | 1, 1 => 1
        | _, _ => 0
    end))
    (dn_mat := fun n => Mplus (Mmultn A n) (opp I))
    (dn := fun n => gcdn [Z.to_nat (floor (coeff_mat 0 (dn_mat n) 0 0)); 
                              Z.to_nat (floor (coeff_mat 0 (dn_mat n) 0 1)); 
                              Z.to_nat (floor (coeff_mat 0 (dn_mat n) 1 0)); 
                              Z.to_nat (floor (coeff_mat 0 (dn_mat n) 1 1))])
    : ~ ex_lim_seq (fun n => INR (dn n)).
Proof. Admitted.
