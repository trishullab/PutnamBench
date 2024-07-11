(* Note: -- Two external functions have been defined for usage in both solution and problem statement. *)
Require Import Nat Ensembles List. From mathcomp Require Import div fintype seq ssrbool.
Fixpoint hd (n: nat) (l:list 'I_n) := match l with | nil => 0 | x :: _ => x end.
Fixpoint expandl (n: nat) (l : list 'I_n) : nat := match l with | nil => 0 | h :: t => (nat_of_ord h) * 10 ^ (length l - 1) + (expandl n t) end.
Definition putnam_2014_b1_solution : Ensemble nat := fun n => n > 0 /\ exists l : list 'I_10, 0 <> hd 10 l /\ In ord0 l /\ expandl 10 l = n.
Theorem putnam_2014_b1
    (n := 11)
    (overexpansion : nat -> list 'I_n -> Prop := fun N l => N = expandl 11 l)
    (A : Ensemble nat)
    (hA : forall N : nat, A N <-> N > 0 /\ exists! (l: list 'I_n), overexpansion N l)
    : (A = putnam_2014_b1_solution).
Proof. Admitted.
