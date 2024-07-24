From mathcomp Require Import ssrnat ssrnum ssralg poly polydiv seq.
Open Scope ring_scope.
Definition putnam_1992_b4_solution := 3984%nat.
Theorem putnam_1992_b4
    (R : numDomainType)
    (itercomp := fix iter (f : {poly R} * {poly R} -> {poly R} * {poly R}) (n : nat) (p : {poly R} * {poly R}) : {poly R} * {poly R} :=
        match n with
        | O => p
        | S n' => f (iter f n' p)
    end)
    (qr : {poly R} * {poly R} -> {poly R} * {poly R} := fun duple => (deriv (fst duple) * snd duple - deriv (snd duple) * fst duple, snd duple * snd duple))
    (valid : {poly R} -> Prop := fun p => p <> 0 /\ lt (size p) 1992 /\ exists c : R, gcdp_rec p ('X^3 - 'X) = polyC c)
    (twople : {poly R} -> {poly R} -> Prop := fun p f => exists g : {poly R}, g * fst (itercomp qr 1992%nat (p, 'X^3 - 'X)) = f * snd (itercomp qr 1992%nat (p, 'X^3 - 'X)))
    (min : nat)
    (hmineq : exists p f : {poly R}, (valid p /\ twople p f) /\ size f = min)
    (hminlb : forall p f : {poly R}, (valid p /\ twople p f) -> ge (size f) min)
    : min = putnam_1992_b4_solution.
Proof. Admitted.
