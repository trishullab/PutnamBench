Require Import Nat Reals Coquelicot.Coquelicot.
Theorem putnam_1978_b3
    (p : nat -> (R -> R) := fix p (n: nat) :=
        match n with
        | O => fun x => 1 + x
        | S O => fun x => 1 + 2 * x
        | S n' => if even n' 
            then fun x => p n' x + INR (S (S n')) / 2 * x * p (pred n') x
            else fun x => p n' x + INR (S n') / 2 * x * p (pred n') x
    end)
    (a : nat -> R)
    (ha : forall (n: nat), p n (a n) = 0)
    (huba : forall (n: nat), forall (r: R), p n r = 0 -> r <= (a n))
    : (forall (i j: nat), lt i j -> a i <= a j) /\ Lim_seq a = 0.
Proof. Admitted.
