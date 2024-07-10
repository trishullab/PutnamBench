Require Import Reals.
Theorem putnam_2018_b4
    (a: R)
    (n: nat)
    (s := fix s (n:nat) (a: R) {struct n}: R :=
        match n with
        | O => R1
        | S O => a
        | S (S O) => a
        | S (S ((S n''') as n'') as n') =>
                (2 * (s n' a) * (s n'' a) - (s n''' a))%R
    end)
    : s n a = R0 -> forall (a: R), exists (m: nat) (n: nat), forall (i: nat), i >= m -> s (i+n) a = s i a.
Proof. Admitted.
