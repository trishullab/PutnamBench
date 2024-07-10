Require Import Ensembles Finite_sets. From mathcomp Require Import fintype.
Theorem putnam_1965_b5
    (E V : nat)
    (simple : (Ensemble ('I_V * 'I_V)) -> Prop := (fun G : Ensemble ('I_V * 'I_V) => (forall v : 'I_V, ~G (v, v)) /\ (forall v w : 'I_V, G (v, w) -> G (w, v))))
    (hE : 4 * E <= Nat.pow V 2)
    : exists G : Ensemble ('I_V * 'I_V), simple G /\ cardinal ('I_V * 'I_V) G (2 * E) /\ ~(exists a b c : 'I_V, G (a, b) /\ G (a, c) /\ G (b, c)).
Proof. Admitted.
