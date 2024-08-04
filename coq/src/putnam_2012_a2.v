Require Import ssreflect.
Theorem putnam_2012_a2
    (S : Type)
    (op : S -> S -> S)
    (is_comm : (S -> S -> S) -> Prop := fun op => forall (x y : S), op x y = op y x)
    (is_assc : (S -> S -> S) -> Prop := fun op => forall (x y z : S), op x (op y z) = op (op x y) z)
    (hop : is_comm op /\ is_assc op)
    (hS : forall x y : S, exists z : S, op x z = y)
    (a b c : S)
    (habc : op a c = op b c)
    : a = b.
Proof. Admitted.