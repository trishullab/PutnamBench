Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_1980_a5
    (n : nat)
    (npos : gt n 0)
    (coeff : nat -> R)
    (hcoeff : coeff n <> 0)
    (p : R -> R := fun x => sum_n (fun i => coeff i * x ^ i) (S n))
    (h1 : nat -> Prop := fun a => RInt (fun x => p x * sin x) 0 (INR a) = 0)
    (h2 : nat -> Prop := fun a => RInt (fun x => p x * cos x) 0 (INR a) = 0)
    : exists (m: nat), forall (b: nat), h1 b /\ h2 b -> lt b m.
Proof. Admitted.
