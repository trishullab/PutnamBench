Require Import Nat Reals Coquelicot.Coquelicot.
Definition putnam_2006_a5_solution (n: nat) := if eqb (n mod 4) (1%nat) then (Z.of_nat n) else (-1 * Z.of_nat n)%Z.
Theorem putnam_2006_a5
    (prodn := fix prod_n (m: nat -> R) (n : nat) : R :=
        match n with
        | O => 1
        | S n' => m (S n') * prod_n m n'
    end)
    (n : nat)
    (th : R)
    (a : nat -> R)
    (nodd : odd n = true)
    (thetairr : ~ exists (p q: Z), th / PI = IZR (p / q))
    (ha : forall k, a k = tan (th + (INR k * PI) / INR n))
    : sum_n_m a 1 n / prodn a n = IZR (putnam_2006_a5_solution n).
Proof. Admitted.
