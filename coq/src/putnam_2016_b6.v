Require Import List Reals Coquelicot.Hierarchy Coquelicot.Series. 
Definition putnam_2016_b6_solution := 1.
Theorem putnam_2016_b6: 
    Series (fun k => (-1)^k/(INR k+1) * Series (fun n => 1/(INR k*(2^n)+1))) = putnam_2016_b6_solution.
Proof. Admitted. 
