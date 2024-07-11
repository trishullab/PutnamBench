Require Import Nat List Reals. From Coquelicot Require Import Coquelicot Hierarchy Rcomplements. 
Definition putnam_2015_a4_solution : R := 4/7.
Theorem putnam_2015_a4
    (f : R -> R := fun x => Series (fun n => if even (Z.to_nat (floor ((INR n)*x))) then 1/(2^n) else R0)) 
    : exists (L: R), forall (x: R), 0 <= x < 1 -> ((f x >= L) /\ forall (M: R), f x >= M -> L >= M) 
    <-> L = putnam_2015_a4_solution.
Proof. Admitted.
