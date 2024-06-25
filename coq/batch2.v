Section putnam_2023_b4. 
Require Import Reals Coquelicot.Derive Coquelicot.Hierarchy. From mathcomp Require Import div fintype seq ssrbool.
Definition putnam_2023_b4_solution := 29.
Theorem putnam_2023_b4 
    (n : nat)
    (i0 : 'I_n)
    (s : 'I_n -> R)
    (f : R -> R)
    (t0 := s (nth i0 (enum 'I_n) 0))
    (hs : forall i : 'I_n, s i < s (ordS i))
    (hf : forall t : R, 
        ((t >= t0 -> continuity_pt f t) /\ (t > t0 /\ ~ exists i, s i = t -> ex_derive_n f 2 t)) /\ 
        (f t0 = 0.5) /\
        (forall k: 'I_n, let tk := s k in filterlim (Derive_n f 1) (at_right tk) (locally 0)) /\
        (forall k: 'I_n, k <> nth i0 (enum 'I_n) (n-1) -> let tk := s k in tk < t < tk+1 -> (Derive_n f 2) = (fun _ => INR k+1)) /\ 
        (forall m: 'I_n, t > s (nth i0 (enum 'I_n) m) -> (Derive_n f 2) = (fun _ => INR m+1))
    )
    : forall (T: R), f(t0+T) = 2023 <-> T >= putnam_2023_b4_solution /\ f(t0 + putnam_2023_b4_solution) = 2023.
Proof. Admitted. 
End putnam_2023_b4.

Section putnam_2023_b5. 
Require Import PeanoNat. From mathcomp Require Import div fintype perm ssrbool.
Definition putnam_2023_b5_solution (n : nat) := n = 1 \/ n mod 4 = 2.
Theorem putnam_2023_b5
    (p : nat -> Prop := fun n => forall m : nat, coprime m n -> exists (π: {perm 'I_n}), forall (k: 'I_n), (π (π k))%%n mod n = m*k%%n)
    : forall n : nat, p n <-> putnam_2023_b5_solution n.
Proof. Admitted. 
End putnam_2023_b5.

(* TODO: missing determinant refinement in coqeal *) 
(* Section putnam_2023_b6. 
Require Import Nat Finite_sets.
From mathcomp Require Import matrix ssrbool ssralg fintype.
Variable putnam_2023_b6_solution : nat -> nat.
Local Open Scope ring_scope.
Theorem putnam_2023_b6: 
    forall (n: nat), 
        let s (i j: nat) := cardinal (nat*nat) (fun p => let (a, b) := p in 1 <= i <= n /\ 1 <= j <= n /\ eq (add (mul a i) (mul b j)) n) in
        (\matrix_(i < n, j < n) s i j)
        = (\matrix_(i < n, j < n) s i j).
Proof. Admitted. 
End putnam_2023_b6. *)

Section putnam_2022_a6. 
Require Import Nat Reals Coquelicot.Hierarchy. From mathcomp Require Import div fintype seq ssralg ssrbool ssrnat ssrnum .
Definition putnam_2022_a6_solution := fun n : nat => n.
Theorem putnam_2022_a6
    (N : nat)
    (M : nat)
    (n := mul N 2)
    (i0 : 'I_n)
    (sumIntervals : ('I_n -> R) -> nat -> R := fun s k => sum_n (fun i => (((s (nth i0 (enum 'I_n) (i+1))))^(2*k-1) - ((s (nth i0 (enum 'I_n) i)))^(2*k-1))) (n-1))
    (valid : nat -> ('I_n -> R) -> Prop := fun m s => forall (k: nat), and (le 1 k) (le k m) -> sumIntervals s k = 1)
    (hvalid : nat -> Prop := fun m => exists (s : 'I_n -> R), (forall (i : 'I_n),  s i < s (ordS i)) /\ s (nth i0 (enum 'I_n) 0) > -1 /\ s (nth i0 (enum 'I_n) (n-1)) < 1 -> valid m s)
    (hM : hvalid M)
    (hMub : forall m : nat, hvalid m -> le m M)
    : M = putnam_2022_a6_solution n.
Proof. Admitted. 
End putnam_2022_a6.

Section putnam_2022_b1.
Require Import Nat Factorial ZArith. From mathcomp Require Import fintype ssralg ssrnat ssrnum poly polydiv. 
Local Open Scope ring_scope.
Theorem putnam_2022_b1 
    (R : numDomainType)
    (n : nat)
    (a : nat -> Z)
    (ha1 : Z.odd (a 1%nat) = true)
    (p : {poly R} := \sum_(i < n) (if (0 <? (a i))%Z then ((Z.to_nat (a i))%:R *: 'X^i) else((Z.to_nat (a i))%:R *: -'X^i)) )
    (b : {poly R} := \sum_(i < n) (iter n (comp_poly p) 1) / (fact n)%:R)
    : forall (i: nat), b`_i <> 0.
Proof. Admitted. 
End putnam_2022_b1.

Section putnam_2022_b2. 
Require Import Ensembles Finite_sets List Reals.
Require Import GeoCoq.Main.Tarski_dev.Ch16_coordinates_with_functions.
Context `{T2D:Tarski_2D} `{TE:@Tarski_euclidean Tn TnEQD}.
Import ListNotations.
Definition vect3:= (F * F * F)%type.
Definition cross_prod (v w : vect3) :=  let '(v1, v2, v3) := v in let '(w1, w2, w3) := w in 
   (SubF (MulF v2 w3) (MulF v3 w2),
    SubF (MulF v3 w1) (MulF v1 w3),
    SubF (MulF v1 w2) (MulF v2 w1)).
Definition putnam_2022_b2_solution := [1; 7].
Theorem putnam_2022_b2
    (p : nat -> Prop := fun n => exists (A: Ensemble vect3), forall (u: vect3), A u <-> exists (v w: vect3), u = cross_prod v w /\ cardinal vect3 A n)
    : forall (n: nat), n > 0 /\ p n -> In n putnam_2022_b2_solution.
Proof. Admitted. 
End putnam_2022_b2.

Section putnam_2022_b4. 
Require Import Reals. From mathcomp Require Import fintype seq ssrbool.
Definition putnam_2022_b4_solution := fun x => (x > 9) /\ (x mod 3 = 0).
Local Open Scope R.
Theorem putnam_2022_b4 
    (p : nat -> Prop := fun n => exists (s: 'I_n -> R),
        ge n 4 ->
        forall (i i0: 'I_n),
        (2 * (s (nth i0 (enum 'I_n) ((i-1) mod n))) = s (nth i0 (enum 'I_n) (i mod n)) + s (nth i0 (enum 'I_n) ((i+1) mod n))) \/
        (2 * (s (nth i0 (enum 'I_n) (i mod n))) = s (nth i0 (enum 'I_n) ((i-1) mod n)) + s (nth i0 (enum 'I_n) ((i+1) mod n))) \/
        (2 * (s (nth i0 (enum 'I_n) ((i+1) mod n))) = s (nth i0 (enum 'I_n) ((i-1) mod n)) + s (nth i0 (enum 'I_n) (i mod n))))
    : forall (n: nat), p n <-> putnam_2022_b4_solution n.
Proof. Admitted.
End putnam_2022_b4.

Section putnam_2022_b6. 
Require Import Reals.
Local Open Scope R.
Definition putnam_2022_b6_solution := fun (f : R -> R) =>
    exists (c : R), c >= 0 /\ forall (x : R), x >= 0 /\ f x >= 0 -> f x = 1 / (1 + c * x).
Theorem putnam_2022_b6
    (p : (R -> R) -> Prop := fun f : R -> R => forall (x y: R), x > 0 /\ y > 0 /\ f x > 0 /\ f y > 0 ->
        f (x * f y) + f (y * f x) = 1 + f (x + y))
    : forall f : R -> R, p f <-> putnam_2022_b6_solution f.
Proof. Admitted. 
End putnam_2022_b6.

Section putnam_2021_a2.
Require Import Reals. From Coquelicot Require Import Continuity Lim_seq Rbar. 
Local Open Scope R.
Definition putnam_2021_a2_solution := exp 1.
Theorem putnam_2021_a2
    (sequence_r_to_0 : nat -> R := fun n => 1 / INR n)
    (f : R -> R -> R := fun r x => Rpower (Rpower(x+1)(r+1) - Rpower x (r+1)) 1/r)
    (g : R -> R := fun x => Lim_seq (fun n => f (sequence_r_to_0 n) x))
    : Lim_seq (fun n => (g (INR n))/INR n) = putnam_2021_a2_solution.
Proof. Admitted. 
End putnam_2021_a2.

Section putnam_2021_a5.
Require Import Nat. From mathcomp Require Import bigop div fintype eqtype seq ssrbool ssrnat.
Variables (I : finType) (P : pred I).
Definition putnam_2021_a5_solution (n: nat) := ~ (n %| 42 \/ n %| 46). 
Theorem putnam_2021_a5
    (A : pred 'I_2021 := fun n => let m := nat_of_ord n in ((1 <= m <= 2021) && (gcd  m 2021 == 1)))
    (B : nat -> nat := fun j => \sum_(n | A n) (nat_of_ord n)^j)
    : forall (j: nat), B j mod 2021 = 0 <-> putnam_2021_a5_solution j. 
Proof. Admitted. 
End putnam_2021_a5.

Section putnam_2021_a6. 
Require Import ZArith Znumtheory. From mathcomp Require Import seq ssrnat ssrnum ssralg poly prime. 
Local Open Scope ring_scope.
Definition putnam_2021_a6_solution := True.
Theorem putnam_2021_a6
    (R : numDomainType) 
    (p : {poly R}) 
    (a := forall i : nat, p`_i = 0 /\ p`_i = 1)
    (ha : exists (q r: {poly R}), size p <> 0%nat /\ size q <> 0%nat -> p = q * r)
    : exists q r, q <> 1 /\ r <> 1 /\ (horner p 2) = q * r <-> putnam_2021_a6_solution.
Proof. Admitted. 
End putnam_2021_a6.

Section putnam_2021_b2. 
Require Import List Reals Coquelicot.Hierarchy Coquelicot.Series. 
Definition putnam_2021_b2_solution := 2/3.
Theorem putnam_2021_b2
    (A : (nat -> R) -> nat -> R := fun a n => fold_left Rmult (map a (seq 0 n)) 1)
    (B : (nat -> R) -> R := fun a => Series (fun n => INR n * (Rpower (A a n) 1/(INR n))))
    : (forall (a : nat -> R), (forall (i: nat), a i >= 0) /\ Series a = 1 -> putnam_2021_b2_solution >= B a) /\ 
    (exists (a : nat -> R), (forall (i: nat), a i >= 0) /\ Series a = 1 -> putnam_2021_b2_solution =  B a).
Proof. Admitted. 
End putnam_2021_b2.

Section putnam_2020_b6.
Require Import Reals. From Coquelicot Require Import Coquelicot Hierarchy Rcomplements. 
Local Open Scope R.
Theorem putnam_2020_b6 
    (A : nat -> R := fun k => (-1)^(Z.to_nat (floor (INR k * (sqrt 2 - 1)))))
    (B : nat -> R := fun n => sum_n A n)
    : forall (n: nat), B n >= 0.
Proof. Admitted. 
End putnam_2020_b6.
