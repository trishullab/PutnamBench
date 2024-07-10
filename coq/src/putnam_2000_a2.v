Require Import Reals.
Open Scope Z.
Theorem putnam_2000_a2
    : forall (m: Z), exists (n: Z), n >= m /\ 
    exists (a1 a2 b1 b2 c1 c2: Z), n = a1*a1 + a2*a2 /\ n+1 = b1*b1 + b2*b2 /\ n+2 = c1*c1 + c2*c2. 
Proof. Admitted.
