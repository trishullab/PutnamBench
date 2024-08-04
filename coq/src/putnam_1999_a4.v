Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1999_a4_solution := 9/32.
Theorem putnam_1999_a4: 
    Series (fun m => Series (fun n => (INR m ^ 2 * INR n) / (3 ^ m *(INR n * 3 ^ m + INR m * 3 ^ n)))) = putnam_1999_a4_solution.
Proof. Admitted.