Require Import Ensembles Reals FinFun.
Theorem putnam_1972_a2
    : (forall (S : Type) (Smul : S -> S -> S), (forall x y : S, (Smul x (Smul x y) = y /\ Smul (Smul y x) x = y)) -> (forall x y : S, Smul x y = Smul y x)) /\
        (exists (S : Type) (Smul : S -> S -> S), (forall x y : S, (Smul x (Smul x y) = y /\ Smul (Smul y x) x = y)) /\ ~(forall x y z : S, Smul x (Smul y z) = Smul (Smul x y) z)).
Proof. Admitted.