Require Import Reals Coquelicot.Coquelicot.
Open Scope C.
Theorem putnam_2014_b4
    (n : nat)
    (npos : ge n 0)
    (P : C -> C := fun r => sum_n (fun k => (2 * ((INR k) * (INR n - INR k)) * r ^ k)) n)
    : forall r : C, P r = 0 -> (exists (t : R), r = RtoC t). 
Proof. Admitted.
