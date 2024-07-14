Require Import Ensembles Finite_sets Reals Coquelicot.Coquelicot. From mathcomp Require Import fingroup.
Open Scope group_scope.
Variable G : finGroupType.
Theorem putnam_1968_b2
    (A : Ensemble G)
    (Ggroup : {group G})
    (hA : exists Acard Gcard : nat, cardinal G A Acard /\ cardinal G (Full_set G) Gcard /\ (INR Acard) > (INR Gcard) / 2)
    : forall g : G, exists x y : G, A x /\ A y /\ g = x * y.
Proof. Admitted.
