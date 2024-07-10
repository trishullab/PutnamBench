Require Import List Bool Reals Peano_dec Coquelicot.Coquelicot.
Open Scope nat_scope.
Theorem putnam_1993_a4 
    (x y: list nat)
    (hx : length x = 19)
    (hy : length y = 93)
    (hx2 : forall n : nat, In n x -> 1 < n <= 93)
    (hy2 : forall n  : nat, In n y -> 1 < n <= 19)
    : exists (presentx presenty : nat -> bool), 
    sum_n (fun n => 
        if ((existsb (fun i => if eq_nat_dec n i then true else false) x) && presentx n) 
        then (INR n) else R0) 94 = 
    sum_n (fun n => 
        if ((existsb (fun i => if eq_nat_dec n i then true else false) y) && presenty n) 
        then (INR n) else R0) 20. 
Proof. Admitted.
