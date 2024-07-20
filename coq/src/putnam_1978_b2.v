Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1978_b2_solution := 7/4. 
Theorem putnam_1978_b2
    : Series (fun i => Series (fun j => 1/(INR i*INR i*INR j + 2*INR i*INR j + INR i*INR j*INR j))) = putnam_1978_b2_solution.    
Proof. Admitted.
