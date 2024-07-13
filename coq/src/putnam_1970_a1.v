Section putnam_1970_a1.
Require Import Reals Ensembles stdpp.sets. From Coquelicot Require Import Coquelicot.
Open Scope R.
Theorem putnam_1970_a1
    (a b : R)
    (ha : a > 0)
    (hb : b > 0)
    (f : R -> R := fun x : R => exp (a*x) * cos (b*x))
    (p : nat -> R)
    (hp : exists c : R, c > 0 /\ forall x : R, ball 0 c x -> Series (fun n => (p n)*x^n) = f x)
    (T : nat -> Prop := fun n => p n = 0) 
    : (T = Empty_set nat \/ pred_infinite T).
Proof. Admitted.
End putnam_1970_a1.