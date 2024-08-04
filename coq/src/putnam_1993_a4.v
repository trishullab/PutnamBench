Require Import List Bool Reals Peano_dec Coquelicot.Coquelicot.
Open Scope nat_scope.
Fixpoint s_sum (a : nat -> nat) (k : nat) (s : nat -> bool) : nat := 
    match k with
    | O => a 0
    | S k' => (if s k then a k else 0) + s_sum a k' s
    end.
Theorem putnam_1993_a4 
    (x y : nat -> nat)
    (hx : forall i : nat, i < 19 -> 1 <= x i <= 93)
    (hy : forall j : nat, j < 93 -> 1 <= y j <= 19)
    : exists (is js : nat -> bool), (exists i : nat, i < 19 /\ is i = true) /\ s_sum x 18 is = s_sum y 92 js.
Proof. Admitted.
