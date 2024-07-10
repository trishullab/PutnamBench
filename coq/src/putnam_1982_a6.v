Require Import Nat Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1982_a6_solution := False.
Theorem putnam_1982_a6
    (a: nat -> R) 
    : (Series a = 1 /\ forall (i j: nat), le i j -> Rabs (a i) > Rabs (a j)) /\
    forall (f: nat -> nat), Lim_seq (fun i => Rabs (INR (f i - i)) * Rabs (a i)) = 0 ->
    Series (fun i => a (f i)) = 1 -> putnam_1982_a6_solution.    
Proof. Admitted.
