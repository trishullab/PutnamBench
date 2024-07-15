Require Import Reals. From Coquelicot Require Import Coquelicot Continuity RInt.
Open Scope R.
Theorem putnam_2017_a3 
    (a b: R)
    (hab : a < b)
    (f g: R -> R) 
    (hfg : Prop := (forall x, a <= x <= b  ->  continuity_pt f x /\  f x > 0 /\ g x > 0) /\ (RInt f a b = RInt g a b) /\ (exists x, a <= x <= b /\ f x <> g x))
    (I_n : nat -> R := fun n => RInt (fun x => (f x)^(n+1)/(g x)^n) a b)
    : (forall (n: nat), ge n 1 -> I_n n < I_n (Nat.add n 1)) /\ filterlim I_n eventually (Rbar_locally p_infty).
Proof. Admitted.
