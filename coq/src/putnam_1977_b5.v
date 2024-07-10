Require Import List Reals.
Open Scope R.
Theorem putnam_1977_b5 
    (n : nat) 
    (a : list R) 
    (b : R)
    (ha : length a = n)
    (sum1 := fold_left Rplus a 0)
    (sum2 := fold_left (fun acc x => Rplus acc (x*x)) a 0)
    : forall (b: R), b < sum1*sum1/(INR n-1) - sum2 ->
    forall (i j: nat), R1 <= INR i <= INR n /\ 1 <= INR j <= INR n /\ i <> j -> b < 2 * (nth i a 0) * (nth j a 0).
Proof. Admitted.
