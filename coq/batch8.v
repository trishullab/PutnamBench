(* Skipped due to inability to use groups in mathcomp *)
(* Section putnam_2018_a4. 
Theorem putnam_2018_a4: True.
Proof. Admitted.
End putnam_2018_a4.  *)

(* TODO: WIP *)
Section putnam_2018_b1. 
Require Import ZArith.
Open Scope Z.
Theorem putnam_2018_b1: 
    let P := fun (a b : Z) => 0 <= a <= 2 /\ 0 <= b <= 100 in
    forall (a b: Z), P a b ->
    True.
Proof. Admitted.
End putnam_2018_b1. 

Section putnam_2018_b6. 
Require Import Nat List Ensembles Finite_sets Reals.
Theorem putnam_2018_b6:
    forall (E: Ensemble (list nat)), 
    forall (l: list nat), (
        E l -> 
        length l = 2018 /\ 
        forall (n: nat), (List.In n l) -> (n = 1 \/ n = 2 \/ n = 3 \/ n = 4 \/ n = 5 \/ n = 6 \/ n = 10) /\
        fold_left Nat.add l 0 = 3860
    ) ->
    exists (n: nat), cardinal (list nat) E n /\ Rle (INR n) (Rmult (Rpower 2 3860) (Rpower (Rdiv (INR 2018) (INR 2048)) 2018)).
Proof. Admitted.
End putnam_2018_b6. 

Section putnam_2017_a2. 
Require Import Nat QArith Reals. From mathcomp Require Import seq ssrnat ssrnum ssralg poly. 
Local Open Scope ring_scope.
Theorem putnam_2017_a2: 
    let Q :=
        fix q (n: nat) (x: R): R :=
            match n with
            | O => R1
            | S O => x
            | S ((S n'') as n') => Rdiv (Rminus (Rmult (q n' x) (q n' x)) 1) (q n'' x)
    end in
    forall (n: nat), ge n 0 -> 
    exists (R: numDomainType) (p: {poly R}) (i: nat), (exists (z: Z), p`_i = if (Z.ltb z 0) then -(Z.to_nat z)%:R else (Z.to_nat z)%:R) /\
    exists (z: Z), forall (x: RbaseSymbolsImpl.R), Q n x = IZR z /\ (if (Z.ltb z 0) then -(Z.to_nat z)%:R else (Z.to_nat z)%:R) = p.[n%:R].
Proof. Admitted.
End putnam_2017_a2. 

Section putnam_2017_a3. 
Require Import Reals. From Coquelicot Require Import Coquelicot Continuity RInt.
Open Scope R.
Theorem putnam_2017_a3: 
    forall (a b: R), a < b -> 
    forall (f g: R -> R) (x: R), a <= x <= b  ->  continuity_pt f x /\  f x > 0 /\ g x > 0 ->
    (RInt f a b = RInt g a b) /\ (exists (x: R), a <= x <= b /\ f x <> g x) ->
    let I_n (n: nat) := RInt (fun x => (f x)^(n+1)/(g x)^n) a b in
    forall (n: nat), I_n n < I_n (Nat.add n 1) /\ ~ ex_lim_seq I_n.
Proof. Admitted.
End putnam_2017_a3. 

Section putnam_2013_a6. 
Require Import List ZArith.
Open Scope Z.
Theorem putnam_2013_a6: 
    let w (v: (Z*Z)) : Z := 
    match v with
        | (-2, -2) => -1 | (-2, -1) => -2 | (-2,  0) =>  2 | (-2,  1) => -2 | (-2,  2) => -1
        | (-1, -2) => -2 | (-1, -1) =>  4 | (-1,  0) => -4 | (-1,  1) =>  4 | (-1,  2) => -2
        | ( 0, -2) =>  0 | ( 0, -1) => -4 | ( 0,  0) => 12 | ( 0,  1) => -4 | ( 0,  2) =>  2
        | ( 1, -2) =>  1 | ( 1, -1) =>  4 | ( 1,  0) => -4 | ( 1,  1) =>  4 | ( 1,  2) => -2
        | ( 2, -2) =>  2 | ( 2, -1) => -2 | ( 2,  0) =>  2 | ( 2,  1) => -2 | ( 2,  2) => -1
        | _ => 0
    end in 
    let A (l : list (Z * Z * (Z * Z))) : Z :=
        fst (fold_left (fun acc pq => 
        let p := (fst (fst pq), snd (fst pq)) in
        let q := (fst (snd pq), snd (snd pq)) in
        (Z.add (fst acc) (w (fst p - fst q, snd p - snd q)), Z.add (snd acc) (w (fst p - fst q, snd p - snd q)))) l (0, 0)) 
    in
    forall (l : list (Z * Z * (Z * Z))), length l <> Z.to_nat 0 -> A l > 0.
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
Definition mu (f: R -> R) := RInt f 0 1.
Variable f: R -> R.
Check mu f.
Theorem putnam_2013_b4: 
    let fMult (f g: R -> R) := fun x => f x * g x in
    let mu (f: R -> R) := RInt f 0 1 in
    let var (f: R -> R) := fun x => f x - (mu f) in
    let Var (f: R -> R) := RInt (fMult (var f) (var f)) 0 1 in 
    forall (f g: R -> R) (x: R), 0 <= x <= 1 -> continuity_pt f x /\ continuity_pt g x ->
    exists (Mf: R), forall (x: R), 0 <= x <= 1 -> Mf = Rmax Mf (Rabs (f x)) /\
    exists (Mg: R), forall (x: R), 0 <= x <= 1 -> Mg = Rmax Mg (Rabs (g x)) ->
    Var (fMult f g) <= 2 * Var f * Mg*Mg + 2 * Var g * Mf * Mf. 
Proof. Admitted.
End putnam_2013_b4. 

Section putnam_2013_b5.
Require Import Basics Reals Ensembles Finite_sets. From mathcomp Require Import fintype.
Theorem putnam_2013_b5: 
    forall (n: nat),
    let fix compose_n (f : 'I_n -> 'I_n) (n : nat) :=
        match n with
        | O => fun x => x
        | S n' => compose f (compose_n f n')
    end in 
    forall (E: Ensemble ('I_n -> 'I_n)), 
    forall (f: 'I_n -> 'I_n), E f ->
    forall (x: 'I_n), exists (j: nat) (k: 'I_n), (compose_n f j) x <= k ->
    cardinal ('I_n -> 'I_n) E (k * n^(n-1)).
Proof. Admitted.
End putnam_2013_b5. 

Section putnam_2012_a2. 
Require Import ssreflect.
Theorem putnam_2012_a2: 
    forall (S : Type),
    let is_comm (op : S -> S -> S) := forall (x y: S), op x y = op y x in
    let is_assc (op : S -> S -> S) := forall (x y z: S), op x (op y z) = op (op x y) z in
    forall op, is_comm op /\ is_assc op /\ forall (x y: S), exists (z: S), op x z = y ->
    forall (a b c: S), op a c = op b c -> a = b.
Proof. Admitted.
End putnam_2012_a2. 