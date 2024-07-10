Require Import Reals.
Open Scope R.
Theorem putnam_1982_a5 
    (a b c d: nat)
    (habcd : Nat.le (Nat.add a c) 1982 /\ INR a / INR b + INR c / INR d < 1)
    : 1 - INR a / INR b - INR c / INR d > 1/pow 1983 3.
Proof. Admitted.
