
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

(* Skipped due to lack of surface integral function *)
(* Section putnam_2019_a4. 
Require Import PeanoNat. Require Import Reals Coquelicot.Derive.
Definition putnam_2019_a4_solution := false. 
Theorem putnam_2019_a4: 
    forall (f: R -> R),
    continuity f -> 
    forall (x y z: R), x*x + y*y + z*z = 1 ->
    True.
Proof. Admitted. 
End putnam_2019_a4. *)

(* TODO: missing determinant refinement in coqeal *) 
(* Section putnam_2023_b6. 
Require Import Nat Finite_sets.
From mathcomp Require Import matrix ssrbool ssralg fintype.
Variable putnam_2023_b6_solution : nat -> nat.
Open Scope ring_scope.
Theorem putnam_2023_b6: 
    forall (n: nat), 
        let s (i j: nat) := cardinal (nat*nat) (fun p => let (a, b) := p in 1 <= i <= n /\ 1 <= j <= n /\ eq (add (mul a i) (mul b j)) n) in
        (\matrix_(i < n, j < n) s i j)
        = (\matrix_(i < n, j < n) s i j).
Proof. Admitted. 
End putnam_2023_b6. *)

(* TODO: How to get the cardinality of a set with cardinal? Could not figure out a clean way*)
(* Section putnam_1973_a6.
Require Import Reals Finite_sets Ensembles Coquelicot.Coquelicot. From mathcomp Require Import fintype.
Theorem putnam_1973_a6
    (h_nint : nat -> ('I_7 -> (R * R)) -> nat := fun n lines => 
        let intersection_set (p : R * R) : Prop := exists! S : Ensemble 'I_7, cardinal _ S n /\ (forall i : 'I_7, In _ S i -> (snd p = (snd (lines i)) * (fst p) + (fst (lines i)))) in
            cardinal _ intersection_set
    )
    : ~ (exists lines: 'I_7 -> (R * R), (forall i j : 'I_7, i <> j -> (lines i <> lines j)) /\ h_nint 3 lines >= 6 /\ h_nint 2 lines >= 4).
Proof. Admitted.
End putnam_1973_a6. *)

(* Section putnam_1999_a5.
Require Import Reals NewtonInt. From mathcomp Require Import all_algebra all_ssreflect ssrnat ssrnum ssralg fintype poly seq.
Open Scope ring_scope.
Theorem putnam_1999_a5:
    forall (R: numDomainType) (p: {poly R}),
        (size p = 1999%nat) ->
        exists (C: R), Num.norm p.[0] <= GRing.mul C (Num.norm p.[0]).
Proof. Admitted.
End putnam_1999_a5. *)

(* Section putnam_2010_a5.
Require Import Reals. From mathcomp Require Import fingroup ssreflect ssrbool eqtype seq choice fintype div path tuple bigop prime finset.
Open Scope R.
Variable R3: finGroupType.
Definition cross_product (a b : R -> R -> R) : R -> R -> R := a. 
Theorem putnam_2010_a5:
    forall (G: {group R3}),
        forall (a b: R -> R -> R),
            cross_product a b = a \/ cross_product a b = a ->
            forall (a b: R -> R -> R),
                cross_product a b = a. 
Proof. Admitted.
End putnam_2010_a5. *)