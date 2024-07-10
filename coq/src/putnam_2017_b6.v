Require Import Ensembles Finite_sets Factorial List. From mathcomp Require Import div.
Definition putnam_2017_b6_solution := Nat.div (fact 2016) (fact 1953) - fact 63 * 2016.
Theorem putnam_2017_b6
    (A: Ensemble (list nat) := fun l => (length l = 64 /\ NoDup l /\ forall (n: nat), In n l -> 1 <= n <= 2017))
    (Hweighted_sum := fix weighted_sum (l: list nat) (i: nat) : nat :=
        match l with
        | nil => 0
        | x :: xs => (if Nat.ltb i 2 then x else i * x) + weighted_sum xs (i + 1)
    end)
    (h : list nat -> Prop := fun l => Hweighted_sum l 0 %| 2017 = true)
    : cardinal (list nat) A putnam_2017_b6_solution.
Proof. Admitted.
