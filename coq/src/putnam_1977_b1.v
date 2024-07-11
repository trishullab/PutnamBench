Require Import Reals Coquelicot.Series.
Open Scope R.
Definition putnam_1977_b1_solution := 2/3.
Theorem putnam_1977_b1
    : Series (fun n => if (Rle_dec (INR n) 1) then 0 else (pow (INR n) 3 - 1)/ (pow (INR n) 3 + 1)) = putnam_1977_b1_solution.
Proof. Admitted.
