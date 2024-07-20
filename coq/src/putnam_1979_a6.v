Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1979_a6 
    (a: nat -> R)
    : forall n: nat, 0 <= a n <= 1 ->
    exists (b: R), 0 <= b <= 1 ->
    sum_n (fun n => 1/(b - a n)) n <= 8 * INR n * sum_n (fun i => 1/(2*(INR i+1) - 1)) n.
Proof. Admitted.
