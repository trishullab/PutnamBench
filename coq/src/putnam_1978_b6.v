Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1978_b6 
    (a : nat -> nat -> R)
    (n m: nat)
    : forall i j: nat, 0 <= a i j <= 1 ->
    pow (sum_n (fun i => sum_n (fun j => (a i j)/INR i) m * INR i) n) 2 <= 2 * INR m * sum_n (fun i => sum_n (fun j => a i j) m*INR i) n.
Proof. Admitted.
