(* Skipped due to lack of surface integral function *)
(* Section putnam_2019_a4. 
Require Import PeanoNat. Require Import Reals Coquelicot.Derive.
Definition putnam_2019_a4_solution := false. 
Theorem putnam_2019_a4: 
    forall (f: R -> R),
    continuity f -> 
    forall (x y z: R), x*x + y*y + z*z = 1 ->
    True.
Proof. Abort. 
End putnam_2019_a4. *)

Section putnam_2016_b5. 
Require Import Reals Rpower.
Local Open Scope R.
Definition putnam_2016_b5_solution (f: R -> R) : Prop := exists (c: R), c > 0 /\ forall (x: R), x > 1 -> f x = Rpower x c .
Theorem putnam_2016_b5: 
    forall (f: R -> R), forall (x y: R), 
    (x > 1 /\ y > 1 /\ f x > 1 /\ f y > 1) 
    /\
    (x*x <= y <= x*x*x)
    ->
    (f x)*(f x) <= f y <= (f x)*(f x)*(f x)
    <-> 
    putnam_2016_b5_solution f.
Proof. Abort.
End putnam_2016_b5.

Section putnam_2016_b6. 
Require Import List Reals Coquelicot.Hierarchy Coquelicot.Series. 
Definition putnam_2016_b6_solution := 1.
Theorem putnam_2016_b6: 
    Series (fun k => (-1)^k/(INR k+1) * Series (fun n => 1/(INR k*(2^n)+1))) = putnam_2016_b6_solution.
Proof. Abort. 
End putnam_2016_b6.

Section putnam_2015_a2.
Require Import Nat Reals Znumtheory. From mathcomp Require Import div. 
Definition putnam_2015_a2_solution : nat := 181.
Theorem putnam_2015_a2: 
    let A :=
        fix a (n: nat) : nat :=
            match n with
            | O => 1%nat
            | S O => 2%nat
            | S ((S n'') as n') => sub (4*(a n')) (a n'')
        end in
    odd putnam_2015_a2_solution = true /\ prime (Z.of_nat putnam_2015_a2_solution) /\ (putnam_2015_a2_solution %| A 2015%nat) = true.
Proof. Abort. 
End putnam_2015_a2.

Section putnam_2015_a3. 
Require Import Reals ROrderedType Coquelicot.Coquelicot. 
Local Open Scope C.
Definition putnam_2015_a3_solution : C := RtoC 13725.
Theorem putnam_2015_a3: 
    let Carg (z : C) : R := if Reqb (Im z) 0 then (if Rlt_dec (Re z) 0 then PI else R0) else atan ((Im z)/(Re z)) in
    let Clog (n: nat) (z : C) : C := (Re (ln (Cmod z) / ln (INR n)), Carg z) in
    let HCprod2_aux := 
        fix Cprod2_aux (f : nat -> nat -> C) (n m : nat) {struct m} : C :=
            match m with
            | O => f n O
            | S m' => Cmult (f n m') (Cprod2_aux f n m')
        end in
    let HCprod2 :=
        fix Cprod2 (f : nat -> nat -> C) (n m : nat) {struct n}: C :=
            match n with
            | O => 1%R
            | S n' => Cmult (HCprod2_aux f n m) (Cprod2 f n' m)
        end in
    let f (a b: nat) : C := Clog 2%nat (Re (1 + cos (2*PI*INR(a+1)*INR(b+1)/2015)), sin (2*PI*INR(a+1)*INR(b+1)/2015)) in
    HCprod2 f 2015%nat 2015%nat = putnam_2015_a3_solution.
Proof. Abort. 
End putnam_2015_a3.

Section putnam_2015_a5. 
Require Import Nat Reals Arith Znumtheory Ensembles Finite_sets.
Local Open Scope nat_scope.
Theorem putnam_2015_a5: 
    forall (q: nat), odd q = true -> 
    forall (Nq: Ensemble nat),
    forall (a: nat), 
    (
        and (Rle R0 (INR a)) (Rle (INR a) (Rdiv (INR q) (INR 4)))
        /\ gcd a q = 1
        <-> Nq a
    )
    -> exists (Nq_size: nat), cardinal nat Nq Nq_size /\ odd Nq_size = true <-> exists (p k: nat), prime (Z.of_nat p) /\ (p mod 8 = 5 \/ p mod 8 = 7) /\ q = p^k.
Proof. Abort.
End putnam_2015_a5.

(* Skipped due to inability to use det in mathcomp *)
(* Section putnam_2015_a6. 
Theorem putnam_2015_a6: True.
Proof. Abort.
End putnam_2015_a6. *)

Section putnam_2015_b1. 
Require Import Reals List Coquelicot.Derive.
Local Open Scope R_scope.
Theorem putnam_2015_b1 :
    forall (f: R -> R),
    continuity (Derive_n f 3) ->
    exists (l: list R), length l = 5%nat /\ NoDup l /\ forall x, In x l -> f x = 0 ->
    let g (x: R):= f x + 6 * (Derive_n f 1) x + 12 * (Derive_n f 2) x + 8 * (Derive_n f 3) x in
    exists (l': list R), length l = 2%nat /\ NoDup l' /\ forall x, In x l' -> g x = 0.
Proof. Abort.
End putnam_2015_b1.

(* Skipped due to inability to use det in mathcomp *)
(* Section putnam_2014_a2. 
From mathcomp Require Import div.
    Theorem putnam_2014_a2: True.
Proof. Abort.
End putnam_2014_a2. *)
