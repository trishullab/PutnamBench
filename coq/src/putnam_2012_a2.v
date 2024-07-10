Require Import ssreflect.
Theorem putnam_2012_a2
    (S : Type)
    (is_comm : (S -> S -> S) -> Prop := fun op => forall (x y: S), op x y = op y x)
    (is_assc : (S -> S -> S) -> Prop := fun op => forall (x y z: S), op x (op y z) = op (op x y) z)
    : forall op, is_comm op /\ is_assc op /\ forall (x y: S), exists (z: S), op x z = y ->
    forall (a b c: S), op a c = op b c -> a = b.
Proof. Admitted.
End putnam_2012_a2. 