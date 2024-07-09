Section putnam_2004_a6.
Require Import Basics Reals Coquelicot.Coquelicot.
Theorem putnam_2004_a6
    (f: R -> R -> R) 
    (hf : forall x y : R, 0 <= x <= 1 /\ 0 <= y <= 1 /\ continuity_2d_pt f x y)
    : RInt (compose (fun y => RInt (fun x => f x y) 0 1) (fun x => RInt (fun y => f x y) 0 1)) 0 1 + 
    RInt (compose (fun x => RInt (fun y => f x y) 0 1) (fun x => RInt (fun y => f x y) 0 1)) 0 1 <= 
    (RInt (fun x => RInt (fun y => f x y) 0 1) 0 1) ^ 2 + RInt (fun x => RInt (fun y => (f x y) ^ 2) 0 1) 0 1.
Proof. Admitted.
End putnam_2004_a6.

Section putnam_2004_b1.
Require Import Nat Reals Coquelicot.Coquelicot.
Theorem putnam_2004_b1
    (c: nat -> Z)
    (n: nat)
    (P : R -> R := fun x => sum_n (fun i => IZR (c i) * x ^ i) (n + 1))
    : forall (p q: Z), P (IZR (p / q)) = 0 -> let r := IZR (p / q) in
    forall (i: nat), and (le 1 i) (le i n) -> sum_n (fun j => IZR (c (sub n j)) * r ^ (i - j)) i = IZR (floor (sum_n (fun j => IZR (c (sub n j)) * r ^ (i - j)) i)). 
Proof. Admitted.
End putnam_2004_b1.

Section putnam_2004_b2.
Require Import Factorial Reals Coquelicot.Coquelicot.
Theorem putnam_2004_b2
    (m n: nat)
    (hm : ge m 0)
    (hn : ge n 0)
    : INR (fact (m + n)) / INR (m + n) ^ (m + n) < INR (fact m) / INR m ^ m * INR (fact n) / INR n ^ n.
Proof. Admitted.
End putnam_2004_b2.

Section putnam_2004_b5.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2004_b5_solution := 2 / exp 1.
Theorem putnam_2004_b5
    (prodn := fix prod_n (m: nat -> R) (n : nat) : R :=
        match n with
        | O => m 0%nat
        | S n' => m n' * prod_n m n'
    end)
    : filterlim (fun x => (Lim_seq (fun nInc => prodn (fun n => Rpower ((1 + x ^ (n + 1)) / (1 + x ^ n)) (x ^ n) ) nInc))) (at_left 1) (locally 0).
Proof. Admitted.
End putnam_2004_b5.

Section putnam_2005_a1.
Require Import Nat List Coquelicot.Coquelicot.
Theorem putnam_2005_a1
    : forall (n: nat), n > 0 -> exists (l: list nat), forall (p q: nat), In p l /\ In q l -> exists (r1 s1 r2 s2: nat), p = 2 ^ r1 * 3 ^ s1 /\ q = 2 ^ r2 * 3 ^ s2 /\ p mod q <> 0 /\ q mod p <> 0.
Proof. Admitted.
End putnam_2005_a1.

Section putnam_2005_a3.
Require Import Reals Coquelicot.Coquelicot. From Coqtail Require Import Cpow.
Theorem putnam_2005_a3
    (c : nat -> Z)
    (n : nat)
    (p := fun z : C => sum_n (fun i => IZR (c i) * Cpow z i) (n + 1))
    : forall (r: C), p r = 0 ->  r = RtoC (-1) /\ r = RtoC 1 ->
    let g (z: C) := p z / Cpow z (n / 2) in
    forall (r: C), g r = 0 ->  r = RtoC (-1) /\ r = RtoC 1.
Proof. Admitted.
End putnam_2005_a3.

Section putnam_2005_a5.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2005_a5_solution := PI * (ln 2 / ln 10) / 8.
Theorem putnam_2005_a5
    : RInt (fun x => ln (x + 1) / (x ^ 2 + 1)) 0 1 = putnam_2005_a5_solution.
Proof. Admitted.
End putnam_2005_a5.

Section putnam_2005_b1.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2005_b1_solution (c: nat -> nat -> R) (n m: nat) := n = 2%nat /\ m = 2%nat /\ c = fun x y => match x, y with | 0, 1 => -1 | 0, 2 => 1 | 1, 0 => 2 | 1, 1 => -4 | 2, 0 => 4 | _, _ => 0 end.
Theorem putnam_2005_b1
    (c: nat -> nat -> R)
    (n m: nat)
    (p : R -> R -> R := fun x y => sum_n (fun i => (sum_n (fun j => c i j * x ^ i * y ^ j) m)) (n + 1))
    : forall (a: R), p (IZR (floor a)) (IZR (floor (2 * a))) = 0 <-> putnam_2005_b1_solution c n m.
Proof. Admitted.
End putnam_2005_b1.

Section putnam_2005_b2.
Require Import Nat List Reals Coquelicot.Coquelicot.
Import ListNotations.
Definition putnam_2005_b2_solution (n: nat) (k: list nat) := (n, k) = (1%nat, [1%nat]) \/ (n, k) = (3%nat, [2%nat; 3%nat; 6%nat]) \/ (n, k) = (3%nat, [2%nat; 6%nat; 3%nat]) \/ (n, k) = (3%nat, [3%nat; 2%nat; 6%nat]) \/ (n, k) = (3%nat, [3%nat; 6%nat; 2%nat]) \/ (n, k) = (3%nat, [6%nat; 2%nat; 3%nat]) \/ (n, k) = (3%nat, [6%nat; 3%nat; 2%nat]) \/ (n, k) = (4%nat, [4%nat; 4%nat; 4%nat; 4%nat]).
Theorem putnam_2005_b2
    : forall (n: nat) (k: list nat), forall (x: nat), fold_left add k 0%nat = sub (mul 5 n) 4 /\ sum_n (fun n => 1 / INR (nth n k 0%nat)) n = 1 <-> putnam_2005_b2_solution n k.
Proof. Admitted.
End putnam_2005_b2.

Section putnam_2005_b3.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2005_b3_solution (f: R -> R) := exists (c d: R), c > 0 /\ d > 0 /\ f = (fun x => c * Rpower x d).
Theorem putnam_2005_b3
    : forall (f: R -> R) (x: R), x > 0 /\ f x > 0 /\ ex_derive f x -> exists (a: R), Derive f (a / x) = x  / f x <-> putnam_2005_b3_solution f.
Proof. Admitted.
End putnam_2005_b3.

Section putnam_2005_b4.
Require Import List Ensembles Finite_sets ZArith.
Open Scope Z.
Theorem putnam_2005_b4 
    (Absl := fix absl (l : list Z) : list Z :=
        match l with
        | nil => nil
        | h :: t => Z.abs h :: t
    end)
    : forall (m n: nat), forall (E1 E2: Ensemble (list Z)) (l1 l2: list Z),
    length l1 = n /\ length l2 = m /\ (E1 l1 <-> fold_left Z.add (Absl l1) 0 <= Z.of_nat m) /\ (E2 l2 <-> fold_left Z.add (Absl l2) 0 <= Z.of_nat n) <-> exists (a: nat), cardinal (list Z) E1 a /\ cardinal (list Z) E2 a.
Proof. Admitted.
End putnam_2005_b4.

Section putnam_2006_a5.
Require Import Nat Reals Coquelicot.Coquelicot.
Definition putnam_2006_a5_solution (n: nat) := if eqb (n mod 4) (1%nat) then (INR n) else (-1 * INR n).
Theorem putnam_2006_a5
    (prodn := fix prod_n (m: nat -> R) (n : nat) : R :=
        match n with
        | O => m 0%nat
        | S n' => m n' * prod_n m n'
    end)
    : forall (n: nat) (th: R), odd n = true /\ ~ exists (p q: Z), th / PI = IZR (p / q) /\
    let a (k: nat) := tan (th + INR k * PI / INR n) in sum_n a n / prodn a n = putnam_2006_a5_solution n.
Proof. Admitted.
End putnam_2006_a5.

Section putnam_2006_b2.
Require Import List Reals Coquelicot.Coquelicot.
Theorem putnam_2006_b2
    (n : nat)
    (npos : gt n 0)
    (X : list R)
    (hXcard : length X = n)
    : exists (presS: R -> Prop) (m: Z) (S: list R), 
    (neq (length S) 0) /\ (forall (x: R), In x S <-> (In x X /\ presS x)) /\
    (Rabs (IZR m + (fold_left Rplus S 0)) <= 1 / INR (n + 1)).
Proof. Admitted.
End putnam_2006_b2.

Section putnam_2006_b5.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_2006_b5_solution := 1 / 16.
Theorem putnam_2006_b5
    (I : (R -> R) -> R := fun f => RInt (fun x => x ^ 2 * f x) 0 1)
    (J : (R -> R) -> R := fun f => RInt (fun x => x * (f x) ^ 2) 0 1)
    (m: R)
    (hm : exists (f: R -> R) (x: R), 0 <= x <= 1 /\ continuity_pt f x /\ m = I f - J f)
    (hmub : forall (f: R -> R) (x: R), 0 <= x <= 1 /\ continuity_pt f x /\ m >= I f - J f)
    : m = putnam_2006_b5_solution.
Proof. Admitted.
End putnam_2006_b5.

Section putnam_2006_b6.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2006_b6_solution (k: nat) := ((INR k + 1) / INR k) ^ k.
Theorem putnam_2006_b6
    (a0: R)
    (k: nat)
    (ha0 : a0 > 0)
    (hk : ge k 1)
    (A := fix a (n: nat) : R :=
        match n with
        | O => a0
        | S n' => a n' + 1 / (a n') ^ (1 / k)
    end)
    : Lim_seq (fun n => (A n) ^ (k + 1) / INR n ^ k) = putnam_2006_b6_solution k.
Proof. Admitted.
End putnam_2006_b6.

Section putnam_2007_a4.
Require Import Reals Zpower Coquelicot.Coquelicot.
Definition putnam_2007_a4_solution (f: R -> R) := exists (c d: Z), Z.ge d 0 /\ Z.ge c (1 - d) /\ f = (fun n => (IZR (Zpower 10 c) * IZR (Zpower (9 * floor n + 1) d) - 1) / 9).
Theorem putnam_2007_a4
    (repunit : R -> Prop := fun n => n = IZR (floor n) /\ n > 0 /\ exists (m: nat), n = sum_n (fun i => 10 ^ i) m)
    (c: nat -> R)
    (n: nat)
    (f : R -> R := fun x => sum_n (fun i => c i * x ^ i) (n + 1))
    : repunit (INR n) -> repunit (f (INR n)) <-> putnam_2007_a4_solution f.
Proof. Admitted.
End putnam_2007_a4.

Section putnam_2007_b1.
Require Import Nat Reals Coquelicot.Coquelicot. From mathcomp Require Import div.
Theorem putnam_2007_b1
    (c: nat -> nat)
    (n: nat)
    (hn : gt n 0)
    (f : nat -> R := fun x => sum_n (fun i => INR (mul (c i) (x ^ i))) (n + 1))
    : forall (x: nat), gt (c x) 0 ->
    Z.to_nat (floor (f n)) %| Z.to_nat (floor (f (Z.to_nat (floor (f n + 1))))) = true <-> n = 1%nat.
Proof. Admitted.
End putnam_2007_b1.

Section putnam_2007_b2.
Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2007_b2
    (f: R -> R)
    (hf : forall (x: R), 0 <= x <= 1 /\ continuity_pt f x /\ ex_derive f x /\ RInt f 0 1 = 0)
    (max_f_prime_abs: R)
    : (forall (x: R), 0 <= x <= 1 -> max_f_prime_abs >= Rabs (Derive f x)) /\ (exists (x: R), 0 <= x <= 1 -> max_f_prime_abs = Rabs (Derive f x)) /\
    forall (a: R), 0 < a < 1 -> Rabs (RInt f 0 a) = max_f_prime_abs / 8. 
Proof. Admitted.
End putnam_2007_b2.

Section putnam_2007_b3.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2007_b3_solution := let a := (1 + sqrt 5) / 2 in 2 ^ 2006 / sqrt 5 * (a ^ 3997 - Rpower a (-3997)).
Theorem putnam_2007_b3
    (X := fix x (n: nat) :=
        match n with
        | O => 1
        | S n' => 3 * x n' + IZR (floor (x n' * sqrt (INR n)))
    end)
    : X 2007%nat = putnam_2007_b3_solution.
Proof. Admitted.
End putnam_2007_b3.

Section putnam_2008_a1.
Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2008_a1
    (f : R -> R -> R)
    (x y z: R)
    (hf : f x y + f y z + f z x = 0)
    : exists (g: R -> R), forall (x y: R), f x y = g x - g y.
Proof. Admitted.
End putnam_2008_a1.

Section putnam_2008_a4.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2008_a4_solution := False.
Theorem putnam_2008_a4
    (f : R -> R)
    (hf : forall (x : R), f x = (if (Rle_dec x (exp 1)) then x else x * f (ln x)))
    : ex_lim_seq (fun nInc => sum_n (fun n => 1 / f (INR n)) nInc) <-> putnam_2008_a4_solution.
Proof. Admitted.
End putnam_2008_a4.

Section putnam_2008_b2.
Require Import Factorial Reals Coquelicot.Coquelicot.
Definition putnam_2008_b2_solution := -1.
Theorem putnam_2008_b2
    (f := fix F (n: nat) (x: R) :=
        match n with
        | O => ln x
        | S n' => RInt (fun t => F n' t) 0 x
    end)
    : Lim_seq (fun n => INR (fact n) * f n 1 / ln (INR n)) = putnam_2008_b2_solution. 
Proof. Admitted.
End putnam_2008_b2.

Section putnam_2008_b4.
Require Import Nat Reals Coquelicot.Coquelicot.
Theorem putnam_2008_b4
    (p: nat)
    (hp : Znumtheory.prime (Z.of_nat p))
    (c: nat -> Z)
    (n: nat)
    (h : nat -> nat := fun x => Z.to_nat (floor (sum_n (fun i => IZR (c i) * INR (x ^ i)) (n + 1))))
    : (forall (i j: nat), i <> j /\ and (le 0 i) (le i (p ^ 2 - 1)) /\ and (le 0 j) (le j (p ^ 2 - 1)) -> (h i) mod (p ^ 2) <> h j mod p ^ 2) ->
    (forall (i j: nat), i <> j /\ and (le 0 i) (le i (p ^ 3 - 1)) /\ and (le 0 j) (le j (p ^ 3 - 1)) -> h i mod p ^ 2 <> h j mod p ^ 3).
Proof. Admitted.
End putnam_2008_b4.

Section putnam_2008_b5.
Require Import Reals Coquelicot.Coquelicot. From mathcomp Require Import div.
Open Scope R.
Definition putnam_2008_b5_solution (f : R -> R) := exists n : Z, f = (fun x => x + IZR n) /\ f = (fun x => -x + IZR n).
Theorem putnam_2008_b5
    (f: R -> R)
    (hf : continuity f)
    : forall (x: R), ex_derive f x -> forall (q: R), exists (n1 n2 d: nat), q = INR (n1 / d) /\ f q = INR (n2 / d) /\ coprime n1 d = true /\ coprime n2 d = true <-> putnam_2008_b5_solution f.
Proof. Admitted.
End putnam_2008_b5.

Section putnam_2008_b6.
Require Import Ensembles Finite_sets Reals. From mathcomp Require Import div fintype seq ssrbool perm.
Theorem putnam_2008_b6
    (n k : nat)
    (hn : n > 0)
    (hk : k > 0)
    (klimited : {perm 'I_n} -> Prop := fun sigma => forall (i: 'I_n), Rle (Rabs (INR (nat_of_ord (sigma i)) - INR i)) (INR k))
    (E : Ensemble {perm 'I_n} := fun p =>  klimited p)
    : exists (sz: nat), cardinal {perm 'I_n} E sz /\ Nat.odd sz <-> n mod (2 * k + 1) = 0 \/ n mod (2 * k + 1) = 1.
Proof. Admitted.
End putnam_2008_b6.