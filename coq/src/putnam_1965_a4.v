Require Import Bool ssreflect ssrfun. From mathcomp Require Import fintype.
Variables G B : finType.
Theorem putnam_1965_a4
    (dances : G -> B -> Prop)
    (h : ~(exists b : B, forall g : G, dances g b) /\ (forall g : G, exists b : B, dances g b))
    (nonempty : inhabited G /\ inhabited B)
    : exists (g h : G) (b c : B), dances g b /\ dances h c /\ ~dances h b /\ ~dances g c.
Proof. Admitted.
