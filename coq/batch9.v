Section putnam_2017_b6. 
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

Section putnam_2016_a3. 
Require Import Reals Coquelicot.RInt Coquelicot.Hierarchy.
Definition putnam_2016_a3_solution :=  3 * PI / 8.
Theorem putnam_2016_a3
    (f: R -> R)
    (g : R -> R := fun x => (f x) + f (1 - 1/x))
    : forall(x: R), x <> 0 -> g x = atan x ->
    RInt f 0 1 = putnam_2016_a3_solution.
Proof. Admitted.
End putnam_2016_a3. 

(* Skipped due to inability to use groups in mathcomp *)
(* Section putnam_2016_a5. 
Theorem putnam_2016_a5: True.
Proof. Admitted.
End putnam_2016_a5.  *)

Section putnam_2016_b2. 
Require Import Bool Reals Coquelicot.Lim_seq Coquelicot.Rbar. 
Definition putnam_2016_b2_solution (a b : R) := a = 3/4 /\ b = 4/3.
Theorem putnam_2016_b2
    (squarish : nat -> bool := fun n => existsb ( fun m => Nat.eqb n (m * m) || (forallb (fun p => leb ((n-m)*(n-m)) ((n-p)*(n-p))) (seq 0 (S n))) ) (seq 0 (S n)))
    (squarish_set : nat -> list nat := fun n => filter (fun x => squarish x) (seq 1 n))
    (a b: R)
    : Lim_seq (fun N => INR (length (squarish_set N)) / Rpower (INR N) a) = Finite b <-> putnam_2016_b2_solution a b.
Proof. Admitted.
End putnam_2016_b2. 

Section putnam_2015_a4. 
Require Import Nat List Reals. From Coquelicot Require Import Coquelicot Hierarchy Rcomplements. 
Definition putnam_2015_a4_solution : R := 4/7.
Theorem putnam_2015_a4
    (f : R -> R := fun x => Series (fun n => if even (Z.to_nat (floor ((INR n)*x))) then 1/(2^n) else R0)) 
    : exists (L: R), forall (x: R), 0 <= x < 1 -> ((f x >= L) /\ forall (M: R), f x >= M -> L >= M) 
    <-> L = putnam_2015_a4_solution.
Proof. Admitted.
End putnam_2015_a4. 

Section putnam_2015_b5. 
Require Import Reals. From mathcomp Require Import fintype perm ssrbool.
Open Scope nat_scope.
Definition putnam_2015_b5_solution := 4.
Theorem putnam_2015_b5
    (cond := fun (n : nat) (π :  {perm 'I_n}) =>
        forallb (fun i =>
        forallb (fun j =>
            if Z.to_nat (Z.abs (Z.of_nat (nat_of_ord i) - Z.of_nat (nat_of_ord j))) =? 1 then
            Z.to_nat (Z.abs  (Z.of_nat (nat_of_ord (π i)) - Z.of_nat (nat_of_ord (π j)))) <=? 2
            else true
        ) (ord_enum n)
        ) (ord_enum n))
    (P : nat -> nat := fun n => 
        let perms := enum 'S_n in
            let valid_perms := filter (fun π => cond n π) perms in
        length valid_perms)
    : forall (n: nat), n >= 2 -> P (n+5) - P (n+4) - P (n+3) + P n = putnam_2015_b5_solution.
Proof. Admitted.
End putnam_2015_b5. 

Section putnam_2012_a6. 
Require Import Reals. From Coquelicot Require Import Coquelicot Continuity RInt.
Open Scope R_scope.
Definition putnam_2012_a6_solution := True.
Theorem putnam_2012_a6
    (f : (R*R) -> R)
    (v : R*R)
    (hf : continuous f v -> forall (a b c d : R), a > b /\ c > d /\ (a - b) * (c - d) = 1 ->
    RInt (fun y => RInt (fun x => f (x, y)) a b) c d = 0)
    : (f = fun _ => 0) <-> putnam_2012_a6_solution.
Proof. Admitted.
End putnam_2012_a6. 

(* -- NOTE: this formalization differs from the original statement by assigning a value of zero to all values outside the specified domain/range. *)
(* -- The problem is still solvable given this modification. *)
Section putnam_2012_b1. 
Require Import Reals RIneq.
Open Scope R.
Theorem putnam_2012_b1
    (A: list (R -> R)) 
    (fPlus : (R -> R) -> (R -> R) -> (R -> R) := fun f g => fun x => f x + g x)
    (fMinus : (R -> R) -> (R -> R) -> (R -> R) := fun f g => fun x => f x - g x)
    (fMult : (R -> R) -> (R -> R) -> (R -> R) := fun f g => fun x => f x * g x)
    (to_Rplus : ((R -> R) -> R -> R) := fun f => fun x => if Rle_dec x 0 then 0 else if Rle_dec (f x) 0 then 0 else f x)
    (f1 := to_Rplus (fun x => (Rpower (exp 1) x) - 1))
    (f2 := to_Rplus (fun x => ln (x+1)))
    : (In f1 A /\ In f2 A) /\ 
    (forall (f g: R -> R), In f A /\ In g A -> In (fPlus f g) A) /\
    (forall (f g: R -> R), In f A /\ In g A /\ forall (x: R), f x >= g x -> In (fMinus f g) A)
    <-> (forall (f g: R -> R), In f A /\ In g A -> In (fMult f g) A).
Proof. Admitted.
End putnam_2012_b1. 

Section putnam_2012_b4. 
Require Import Reals Coquelicot.Lim_seq.
Open Scope R.
Definition putnam_2012_b4_solution := True.
Theorem putnam_2012_b4
    (A := fix a (n: nat) : R :=
        match n with
        | O => 1
        | S n' => a n' + Rpower (exp 1) ((-1) * a n')
    end)
    (B : nat -> R := fun n => A n - ln (INR n))
    : ex_lim_seq B <-> putnam_2012_b4_solution.
Proof. Admitted.
End putnam_2012_b4. 