Require Import Factorial Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1996_b4_solution := False.
Theorem putnam_1996_b4
    (Mmultn := fix Mmult_n {T : Ring} {n : nat} (A : matrix n n) (p : nat) :=
        match p with
        | O => mk_matrix n n (fun i j : nat => if Nat.eqb i j then one else zero)
        | S p' => @Mmult T n n n A (Mmult_n A p')
    end)
    (scale_c : R -> matrix 2 2 -> matrix 2 2 := fun c A =>  mk_matrix 2 2 (fun i j => c * coeff_mat 0 A i j))
    (sinA_mat : nat -> matrix 2 2 -> matrix 2 2 := fun n A => scale_c ((pow (-1) n) / INR (fact (2 * n + 1))) (Mmultn A (Nat.add (Nat.mul 2 n) 1)))
    : (exists (A: matrix 2 2), 
    Series (fun n => coeff_mat 0 (sinA_mat n A) 0 0) = 1    /\
    Series (fun n => coeff_mat 0 (sinA_mat n A) 0 1) = 1996 /\
    Series (fun n => coeff_mat 0 (sinA_mat n A) 1 0) = 0    /\
    Series (fun n => coeff_mat 0 (sinA_mat n A) 1 1) = 1)   <->
    putnam_1996_b4_solution.
Proof. Admitted.
