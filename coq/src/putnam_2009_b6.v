Require Import List ZArith Coquelicot.Coquelicot.
Open Scope Z.
Theorem putnam_2009_b6
    : forall (n: Z), n > 0 -> exists (a: list Z), length a = 2009%nat /\ nth 0 a 0 = 0 /\ nth 2008 a 0 = n /\
    forall (i: nat), and (le 1 i) (lt i 2009) -> exists (j: nat), and (le 0 j) (lt j i) /\ ((exists (k: Z), k > 0 /\ nth i a 0 = nth j a 0 + 2 ^ k) \/ exists (b c: Z), b > 0 /\ c > 0 /\ nth i a 0 = b mod c). 
Proof. Admitted.
