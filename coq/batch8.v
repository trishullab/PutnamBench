(* Skipped due to inability to use groups in mathcomp *)
(* Section putnam_2018_a4. 
Theorem putnam_2018_a4: True.
Proof. Admitted.
End putnam_2018_a4.  *)

Section putnam_2018_b1. 
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
End putnam_2018_b1. 

Section putnam_2018_b6. 
Require Import Nat List Ensembles Finite_sets Reals.
Theorem putnam_2018_b6
    (E: Ensemble (list nat) := fun l => length l = 2018 /\ 
        forall (n: nat), (List.In n l) -> (n = 1 \/ n = 2 \/ n = 3 \/ n = 4 \/ n = 5 \/ n = 6 \/ n = 10) /\
        fold_left Nat.add l 0 = 3860
    )
    (n : nat)
    : cardinal (list nat) E n -> Rle (INR n) (Rmult (Rpower 2 3860) (Rpower (Rdiv (INR 2018) (INR 2048)) 2018)).
Proof. Admitted.
End putnam_2018_b6. 

Section putnam_2017_a2. 
Require Import Nat QArith Reals. From mathcomp Require Import seq ssrnat ssrnum ssralg poly. 
Open Scope ring_scope.
Theorem putnam_2017_a2
    (Q := fix q (n: nat) (x: R) : R :=
        match n with
        | O => R1
        | S O => x
        | S ((S n'') as n') => Rdiv (Rminus (Rmult (q n' x) (q n' x)) 1) (q n'' x)
    end)
    : forall (n: nat), ge n 0 -> 
    exists (R : numDomainType) (p : {poly R}) (i : nat), (exists (z : Z), p`_i = if (Z.ltb z 0) then -(Z.to_nat z)%:R else (Z.to_nat z)%:R) /\
    exists (z : Z), forall (x: RbaseSymbolsImpl.R), Q n x = IZR z /\ (if (Z.ltb z 0) then -(Z.to_nat z)%:R else (Z.to_nat z)%:R) = p.[n%:R].
Proof. Admitted.
End putnam_2017_a2. 

Section putnam_2017_a3. 
Require Import Reals. From Coquelicot Require Import Coquelicot Continuity RInt.
Open Scope R.
Theorem putnam_2017_a3 
    (a b: R)
    (hab : a < b)
    (f g: R -> R) 
    (hfg : Prop := forall x, a <= x <= b  ->  continuity_pt f x /\  f x > 0 /\ g x > 0 /\
    (RInt f a b = RInt g a b) /\ f <> g)
    (I_n : nat -> R := fun n => RInt (fun x => (f x)^(n+1)/(g x)^n) a b)
    : forall (n: nat), I_n n < I_n (Nat.add n 1) /\ ~ ex_lim_seq I_n.
Proof. Admitted.
End putnam_2017_a3. 

Section putnam_2013_a6. 
Require Import List ZArith.
Open Scope Z.
Theorem putnam_2013_a6 
    (W := fix w (v : Z*Z) : Z :=
        match v with
        | (-2, -2) => -1 | (-2, -1) => -2 | (-2,  0) =>  2 | (-2,  1) => -2 | (-2,  2) => -1
        | (-1, -2) => -2 | (-1, -1) =>  4 | (-1,  0) => -4 | (-1,  1) =>  4 | (-1,  2) => -2
        | ( 0, -2) =>  0 | ( 0, -1) => -4 | ( 0,  0) => 12 | ( 0,  1) => -4 | ( 0,  2) =>  2
        | ( 1, -2) =>  1 | ( 1, -1) =>  4 | ( 1,  0) => -4 | ( 1,  1) =>  4 | ( 1,  2) => -2
        | ( 2, -2) =>  2 | ( 2, -1) => -2 | ( 2,  0) =>  2 | ( 2,  1) => -2 | ( 2,  2) => -1
        | _ => 0
    end)
    (A : list (Z * Z * (Z * Z)) -> Z := fun l =>
        fst (fold_left (fun acc pq => 
        let p := (fst (fst pq), snd (fst pq)) in
        let q := (fst (snd pq), snd (snd pq)) in
        (Z.add (fst acc) (W (fst p - fst q, snd p - snd q)), Z.add (snd acc) (W (fst p - fst q, snd p - snd q)))) l (0, 0)) )
    : forall (l : list (Z * Z * (Z * Z))), length l <> Z.to_nat 0 -> A l > 0.
Proof. Admitted.
End putnam_2013_a6. 

(* TODO: WIP *)
(* NOTE -- Divide-and-conquer recursion is hard to formulate in Coq. A proof must be provided for termination *)
(* Section putnam_2013_b1. 
Require Import ZArith Nat List Lia Ensembles Finite_sets Reals Program Coquelicot.Hierarchy. 
Open Scope Z.
Program Fixpoint Aa (n : nat) {measure n} : Z :=
  match n with
  | O => 0
  | S O => 1
  | S (S m) => if even m then Aa (div2 (m+2)) else if even (div2 (m+2)) then Aa (div2 (m+2)) else (-1) * Aa (div2 (m+2))
  end.
Next Obligation. Proof. destruct m. simpl; auto. induction m. simpl; auto. simpl. Admitted.
Theorem putnam_2013_b1: 
    sum_n (fun n => (Aa n)*(Aa (n+2))) 2013 = 1.
Proof. Admitted.
End putnam_2013_b1.  *)

Section putnam_2013_b4. 
Require Import Reals. From Coquelicot Require Import Coquelicot Continuity RInt.
Open Scope R.
Theorem putnam_2013_b4 
    (fMult : (R -> R) -> (R -> R) -> (R -> R) := fun f g => fun x => f x * g x)
    (mu : (R -> R) -> R := fun f => RInt f 0 1)
    (var : (R -> R) -> (R -> R) := fun f : R -> R => fun x : R => f x - (mu f))
    (Var : (R -> R) -> R := fun f => RInt (fMult (var f) (var f)) 0 1) 
    : forall (f g: R -> R) (x: R), 0 <= x <= 1 -> continuity_pt f x /\ continuity_pt g x ->
    exists (Mf: R), forall (x: R), 0 <= x <= 1 -> Mf = Rmax Mf (Rabs (f x)) /\
    exists (Mg: R), forall (x: R), 0 <= x <= 1 -> Mg = Rmax Mg (Rabs (g x)) ->
    Var (fMult f g) <= 2 * Var f * Mg*Mg + 2 * Var g * Mf * Mf. 
Proof. Admitted.
End putnam_2013_b4. 

Section putnam_2013_b5.
Require Import Basics Reals Ensembles Finite_sets. From mathcomp Require Import fintype.
Theorem putnam_2013_b5
    (n : nat)
    (composen := fix compose_n (f : 'I_n -> 'I_n) (n : nat) :=
        match n with
        | O => fun x => x
        | S n' => compose f (compose_n f n')
    end)
    (k : 'I_n)
    (E : Ensemble ('I_n -> 'I_n) := fun f => forall (x : 'I_n), exists (j : nat), (composen f j) x <= k)
    : cardinal ('I_n -> 'I_n) E (k * n^(n-1)).
Proof. Admitted.
End putnam_2013_b5. 

Section putnam_2012_a2. 
Require Import ssreflect.
Theorem putnam_2012_a2
    (S : Type)
    (is_comm : (S -> S -> S) -> Prop := fun op => forall (x y: S), op x y = op y x)
    (is_assc : (S -> S -> S) -> Prop := fun op => forall (x y z: S), op x (op y z) = op (op x y) z)
    : forall op, is_comm op /\ is_assc op /\ forall (x y: S), exists (z: S), op x z = y ->
    forall (a b c: S), op a c = op b c -> a = b.
Proof. Admitted.
End putnam_2012_a2. 