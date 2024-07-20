Require Import Logic Ensembles Finite_sets Nat List.
Open Scope nat_scope.
Definition putnam_2018_b1_solution : Ensemble (nat * nat) := fun v : nat * nat =>  exists (b : nat), 0 <= b <= 100 /\ even b = true /\ fst v = 1 /\ snd v = b.
Definition is_in_ensemble_fst (E : Ensemble (nat * nat)) (x : nat) : bool :=
    match E (x, _) with
    | True => true
end.
Definition is_in_ensemble_snd (E : Ensemble (nat * nat)) (y : nat) : bool :=
    match E (_, y) with
    | True => true
end.
Theorem putnam_2018_b1
  (P : Ensemble (nat * nat))
  (v : nat * nat)
  (vinP : Prop)
  (Pvdiff : Ensemble (nat * nat))
  (Pvpart : Prop)
  (hP : P = fun v': nat * nat => 0 <= fst v' <= 2 /\ 0 <= snd v' <= 100)
  (hvinP : vinP = P v)
  (hPvdiff : Pvdiff = fun v' => P v' /\ v' <> v)
  (hPvpart : Pvpart = 
      (exists Q R : Ensemble (nat * nat), 
          (Union (nat * nat) Q R = Pvdiff) /\ 
          (Intersection (nat * nat) Q R = Empty_set (nat * nat)) /\ 
          (exists (n: nat), cardinal (nat * nat) Q n = cardinal (nat * nat) R n /\ 
              (fold_right plus 0%nat (filter (fun x: nat => is_in_ensemble_fst Q x) (seq 0 3)) = fold_right plus 0%nat (filter (fun x: nat => is_in_ensemble_fst R x) (seq 0 3))) /\
              (fold_right plus 0%nat (filter (fun y: nat => is_in_ensemble_snd Q y) (seq 0 101)) = fold_right plus 0%nat (filter (fun y: nat => is_in_ensemble_snd R y) (seq 0 101))))))
  : (vinP /\ Pvpart) <-> putnam_2018_b1_solution v.
Proof. Admitted.
