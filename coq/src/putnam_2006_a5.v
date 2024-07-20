Require Import Nat Reals Coquelicot.Coquelicot.
Definition putnam_2006_a5_solution (n: nat) := if eqb (n mod 4) (1%nat) then (INR n) else (-1 * INR n).
Theorem putnam_2006_a5
    (prodn := fix prod_n (m: nat -> R) (n : nat) : R :=
        match n with
        | O => m 0%nat
        | S n' => m n' * prod_n m n'
    end)
    : forall (n: nat) (th: R), odd n = true /\ ~ exists (p q: Z), th / PI = IZR (p / q) /\
    let a (k: nat) := tan (th + INR k * PI / INR n) in sum_n a n / prodn a n = putnam_2006_a5_solution n.
Proof. Admitted.
