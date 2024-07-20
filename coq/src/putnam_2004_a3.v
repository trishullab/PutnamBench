Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2004_a3
    (U := fix u (n: nat) : R:=
        match n with
        | O => 1
        | S O => 1
        | S (S O) => 1
        | S ((S (S n''') as n'') as n') => (INR (fact n) + u n'' * u n') / u n'''
    end) 
    : forall (n: nat), U n = IZR (floor (U n)).
Proof. Admitted.
