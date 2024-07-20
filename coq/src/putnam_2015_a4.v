Require Import Nat List Reals. From Coquelicot Require Import Coquelicot Hierarchy Rcomplements. 
Definition putnam_2015_a4_solution : R := 4/7.
Theorem putnam_2015_a4
    (f : R -> R := fun x => Series (fun n => if (even (Z.to_nat (floor (((INR (n + 1))*x))))) then 1/(2^(n+1)) else R0)) 
    (p : R -> Prop := fun l => forall x : R, 0 <= x < 1 -> f x >= l)
    (L : R)
    (hpL : p L)
    (hLub : forall l : R, p l -> l <= L)
    : L = putnam_2015_a4_solution.
Proof. Admitted.
