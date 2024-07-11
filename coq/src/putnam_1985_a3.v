Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1985_a3_solution (x: R) := exp x - 1.
Theorem putnam_1985_a3
    (x: R) 
    (A := fix a (i j: nat) :=
        match (i,j) with
        | (i, 0) => x/pow 2 i
        | (i, S j') => pow (a i j') 2 + 2 * a i j'
    end) 
    : Lim_seq (fun n => A n n) = putnam_1985_a3_solution x.
Proof. Admitted.
