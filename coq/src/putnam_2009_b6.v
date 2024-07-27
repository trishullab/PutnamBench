Require Import List ZArith Coquelicot.Coquelicot.
Open Scope Z.
Theorem putnam_2009_b6
    : forall (n: Z), n > 0 -> exists (a: list Z), length a = 2010%nat /\ nth 0 a 0 = 0 /\ nth 2009 a 0 = n /\
    forall (i: nat), and (le 1 i) (le i 2009) -> (exists (j: nat), lt j i /\ (exists (k: Z), k >= 0 /\ nth i a 0 = nth j a 0 + 2 ^ k)) \/ exists (b c: nat), lt b i /\ lt c i /\ nth b a 0 > 0 /\ nth c a 0 > 0 /\ nth i a 0 = (nth b a 0) mod (nth c a 0).
Proof. Admitted.
