Require Import Reals Factorial Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1984_a5_solution := INR (fact 9 * fact 8 * fact 4) / INR (fact 25).
Theorem putnam_1984_a5
    : RInt (fun z => RInt (fun y => RInt (fun x => x * pow y 9 * pow z 8 * pow (1 - x - y - z) 4) 0 (1 - y - z)) 0 (1 - z)) 0 1 = putnam_1984_a5_solution.
Proof. Admitted.
