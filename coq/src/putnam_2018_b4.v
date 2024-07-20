Require Import Reals.
Theorem putnam_2018_b4
    (a: R)
    (s := fix s (n:nat) {struct n}: R :=
        match n with
        | O => R1
        | S O => a
        | S (S O) => a
        | S (S ((S n''') as n'') as n') =>
                (2 * (s n') * (s n'') - (s n'''))%R
    end)
    : (exists n : nat, s n = R0) -> exists (T: nat), (gt T 0 /\ forall (i: nat), s (i+T) = s i).
Proof. Admitted.
