Section putnam_2018_b3. From mathcomp Require Import seq ssrnat div ssrbool. Definition solution_01 := [:: 2^2; 2^4; 2^8; 2^(16)].
Theorem putnam-2018_b3: forall (n: nat), n > 0 -> (n < 10^(100)) /\ (n %| 2^n) /\ ((n-1) %| (2^n-1)) /\ ((n-2) %| (2^n-2)) <-> n \in solution_01.
Proof. Abort. End putnam_2018_b3.

Section putnam_2017_b3. Require Import Reals Coquelicot.Series. Open Scope R_scope. 
Theorem putnam_2017_b3: forall (c: nat -> R), (forall n, c n = 0 \/ c n = 1) -> Series (fun n => c n * (2/3)^n) = 3/2 -> ~ exists a b: Z, b <> 0%Z /\ (Series (fun n => c n * (1/2)^n)) = IZR a / IZR b.
Proof. Abort. End putnam_2017_b3.

Section putnam_2017_b3. From mathcomp Require Import fintype seq ssrbool. Require Import Reals Coquelicot.Complex. Open Scope C.
Theorem putnam_2017_b3: forall (z: 'I_4 -> C), forall (i0 n: 'I_4), (Cmod (z n) < 1)%R /\ z n <> RtoC 1 -> RtoC 3 - z (nth i0 (enum 'I_4) 0) - z (nth i0 (enum 'I_4) 1) - z (nth i0 (enum 'I_4) 2) - z (nth i0 (enum 'I_4) 3) + z (nth i0 (enum 'I_4) 0) * z (nth i0 (enum 'I_4) 1) * z (nth i0 (enum 'I_4) 2) * z (nth i0 (enum 'I_4) 3) <> RtoC 0.
Proof. Abort. End putnam_2017_b3.

Section putnam_1998_a3. Require Import Reals Coquelicot.Derive. Open Scope R.
Theorem putnam_1998_a3: forall (f: R -> R), continuity (Derive_n f 3) -> exists (a: R), (Derive_n f 0) a * (Derive_n f 1) a * (Derive_n f 2) a * (Derive_n f 3) a >= 0.
Proof. Abort. End putnam_1998_a3.

Section putnam_2018_a5. Require Import Reals Coquelicot.Derive. Open Scope R_scope. 
Theorem putnam_2018_a5: forall (n : nat) (f: R -> R) (x: R), (ex_derive_n f n x) -> f 0 = 0 /\ f 1 = 1 /\ (forall x, f x > 0) -> exists (n: nat) (x: R), gt n 0 -> ((Derive_n f n) x > 0).
Proof. Abort. End putnam_2018_a5.

Section putnam_2018_b4. Require Import Reals.
Theorem putnam_2018_b4: forall (a: R), exists (n: nat), let s := fix s (n:nat) (a: R) {struct n}: R := match n with | O => R1 | S O => a | S (S O) => a | S (S ((S n''') as n'') as n') => (2 * (s n' a) * (s n'' a) - (s n''' a))%R end in s n a = R0 -> forall (a: R), exists (m: nat) (n: nat), forall (i: nat), i >= m -> s (i+n) a = s i a. (* https://www.staff.uni-mainz.de/pommeren/MathMisc/FindFSR.pdf *)
Proof. Abort. End putnam_2018_b4. 

Section putnam_2018_b2. Require Import Reals. From Coqtail Require Import Cpow. Open Scope C_scope.
Theorem putnam_2018_b2 : forall (n : nat) (z : C), Cnorm z <= 1 -> ~exists z, (fix f (n : nat) (z : C) (m : nat) : C := match m with | O => 0 | S m' => (R_R_to_C (INR (n - m')) 0) * (z ^ m) + f n z m' end) n z 0%nat = 0.
Proof. Abort. End putnam_2018_b2.

Section putnam_2014_a1. Require Import Reals Factorial Znumtheory Coquelicot.Derive.
Theorem putnam_2014_a1: forall (n: nat), exists a b: Z, b <> 0%Z /\ (Derive_n (fun x => (1 - x + x^2) * exp x) n) 0 / INR (fact n) = IZR a / IZR b /\ (a = 1%Z /\ prime a) /\ Zis_gcd a b 1. 
Proof. Abort. End putnam_2014_a1.

Section putnam_2014_a5. From mathcomp Require Import ssrnat ssrnum ssralg fintype poly polydiv. Open Scope ring_scope.
Theorem putnam_2014_a5: forall (R: numDomainType) (j k : nat), j <> k -> let pj : {poly R}:= \sum_(i < j.+1) ((i%:R + 1) *: 'X^i) in let pk : {poly R}:= \sum_(i < k.+1) ((i%:R + 1) *: 'X^i) in gcdp_rec pj pk = 1. 
Proof. Abort. End putnam_2014_a5.

Section putnam_2014_a5. Require Import Reals. Open Scope Z.
Theorem putnam_2014_a5: forall (a b c: Z), exists (n: Z), n > 0 -> forall (m : Z), n * n * n + a * n * n + b * n + c <> m * m. 
Proof. Abort. End putnam_2014_a5.

Section putnam_1999_a2. From mathcomp Require Import ssrnat ssrnum ssralg fintype poly. Open Scope ring_scope.
Theorem putnam_1999_a2: forall (R: numDomainType) (p : {poly R}), forall x, p.[x] > 0 = true -> exists (k : nat) (f : nat -> {poly R}), p = \sum_(i < k) (f i)*(f i).
Proof. Abort. End putnam_1999_a2.

Section problem_12. Require Import Reals NewtonInt. From mathcomp Require Import all_algebra all_ssreflect ssrnat ssrnum ssralg fintype poly seq. Open Scope ring_scope.
Theorem problem_solution_12: forall (R: numDomainType) (p: {poly R}), size p = 1999 -> exists (C: R), Num.norm p.[0] <= GRing.mul C (Num.norm p.[0]) . 
Proof. Abort. End problem_12.

Section putnam_1999_b4. Require Import Reals Coquelicot.Derive. Open Scope R_scope. 
Theorem putnam_1999_b4 : forall (f: R -> R), continuity (Derive_n f 3) -> forall (x: R), f x > 0 /\ (Derive_n f 1) x > 0 /\ (Derive_n f 2) x > 0 /\ (Derive_n f 3) x > 0 -> forall (x: R), (Derive_n f 3) x <= f x -> forall (x: R), (Derive_n f 1) x < 2 * f x.
Proof. Abort. End putnam_1999_b4.

Section putnam_1999_b6. Require Import Reals List Znumtheory.
Theorem putnam_1999_b6 : forall (A : list Z), forall (x: Z), In x A -> x > 1 -> forall (n: Z), exists (s: Z), In s A -> Zis_gcd s n 1 \/ Zis_gcd s n s -> exists (s: Z) (t: Z) (p: Z), In s A /\ In t A /\ prime p -> Zis_gcd s t p. 
Proof. Abort. End putnam_1999_b6. 

Section problem_15. Require Import Reals. Open Scope Z. 
Theorem problem_solution_15: forall (m: Z), exists (n: Z), n >= m /\ exists (a1 a2 b1 b2 c1 c2: Z), n = a1*a1 + a2*a2 /\ n+1 = b1*b1 + b2*b2 /\ n+2 = c1*c1 + c2*c2.
Proof. Abort. End problem_15. 

Section putnam_2000_b4. Open Scope R_scope. Require Import Reals. 
Theorem putnam_2000_b4: forall (f: R -> R), continuity f -> forall x, f (2*x*x-1) = 2*x*(f x) -> forall x, -1 <= x <= 1 -> f x = 0. 
Proof. Abort. End putnam_2000_b4.

Section putnam_2001_a1. Require Import Ensembles RelationClasses. 
Theorem putnam_2001_a1: forall {A:Type} (op: A->A->A), Ensemble A -> forall (a b: A), op (op a b) a = b -> forall (a b: A), op a (op b a) = b.
Proof. Abort. End putnam_2001_a1. 


Section problem_18. From mathcomp Require Import seq. Require Import List Znumtheory QArith_base. Open Scope Q_scope. Definition solution_18 := True \/ False. Definition S := Q. Definition f (x : S) : S := x - 1 / x. Definition intersection (A : nat -> list Q) := { x | forall (i : nat), In x (A i) }. (* TODO: Fix this *)
Theorem problem_solution_18: forall (x: S), ~ In x [:: -1; 0; 1] -> f x = 0 <-> solution_18.
Proof. Abort. End problem_18.


Section putnam_2010_a4. Require Import Reals Znumtheory. Open Scope Z.
Theorem putnam_2010_a4 : forall (n: Z), n > 0 -> ~ prime (10^(10^(10^n)) + 10^(10^n) + 10^n - 1). 
Proof. Abort. End putnam_2010_a4.

Section putnam_2010_a5. Require Import Reals. From mathcomp Require Import fingroup ssreflect ssrbool eqtype seq choice fintype div path tuple bigop prime finset.
Open Scope R. Variable R3: finGroupType. 
Definition cross_product (a b : R -> R -> R) : R -> R -> R := a. 
(* Fnorm_crossproduct *)
Theorem putnam_2010_a5: forall (G: {group R3}), forall (a b:  R -> R -> R), cross_product a b = a \/ cross_product a b = a -> forall (a b:  R -> R -> R), cross_product  a b = a. 
Proof. Abort. End putnam_2010_a5. 

Section putnam_2023_a1_solution. Require Import Reals List Rtrigo_def Coquelicot.Derive. Open Scope R. Definition min_sol : nat := 18.
Theorem putnam_2023_a1_solution : forall (n: nat), gt n 0 -> Rabs ((Derive_n (fun x => let f_i i := cos (INR i * x) in let coeffs := map f_i (seq 1 n) in fold_right Rmult 1 coeffs) 2) 0) > 2023 -> (n >= min_sol)%nat /\ Rabs ((Derive_n (fun x => let f_i i := cos (INR i * x) in let coeffs := map f_i (seq 1 min_sol) in fold_right Rmult 1 coeffs) 2) 0) > 2023. 
Proof. Abort. End putnam_2023_a1_solution.
