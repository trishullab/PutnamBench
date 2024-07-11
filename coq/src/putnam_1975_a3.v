Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1975_a3_solution (a b c : R) :=  
    ((Rpower (a / b) (1 / (b - a)), (1 - (Rpower (a / b) (Rpower (b / (b - a)) (1 / b)))), 0), 
    (0, (1 - (Rpower (b / c) (Rpower (b / (c - b)) (1 / b)))), Rpower (b / c) (1 / (c - b)))).
Theorem putnam_1975_a3 
    (a b c : R)
    (hi : 0 < a /\ a < b /\ b < c)
    (P : (R * R * R) -> Prop := fun xyz: R * R * R => let '(x, y, z) := xyz in (x >= 0 /\ y >= 0 /\ z >= 0 /\ Rpower x b + Rpower y b + Rpower z b = 1))
    (f : (R * R * R) -> R := fun xyz: R * R * R => let '(x, y, z) := xyz in Rpower x a + Rpower y b + Rpower z c)
    : (P (fst (putnam_1975_a3_solution a b c)) /\ forall x y z : R, P (x, y, z) ->
    f (x, y, z) <= f (fst (putnam_1975_a3_solution a b c))) /\
    (P (snd (putnam_1975_a3_solution a b c)) /\ forall x y z : R, P (x, y, z) ->
    f (x, y, z) >= f (snd (putnam_1975_a3_solution a b c))).
Proof. Admitted.
