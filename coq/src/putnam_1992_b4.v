From mathcomp Require Import ssrnat ssrnum ssralg poly polydiv seq.
Open Scope ring_scope.
Definition putnam_1992_b4_solution := 3984%nat.
Theorem putnam_1992_b4
    (R : numDomainType) 
    (p : {poly R})
    (cond : {poly R} -> {poly R} -> Prop := fun f g => derivn 1992 (p %/ ('X^3 - 'X)) = f %/ g)
    : gt (size p) 1992 /\ exists c: R, gcdp_rec p ('X^3 - 'X) = polyC c ->
    exists mindeg, ((forall (f g: {poly R}), cond f g /\ ge (size f) mindeg) /\ 
    (exists (f g: {poly R}), cond f g /\ size f = mindeg)) <->
    mindeg = putnam_1992_b4_solution.
Proof. Admitted.
