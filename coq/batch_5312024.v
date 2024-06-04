Require Import Nat Reals ZArith Lia.

Section putnam_2009_a1.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2009_a1_solution := True.
Theorem putnam_2009_a1: 
    forall (A B C D: R * R) (f: (R * R) -> R), 
    let (Ax, Ay) := A in let (Bx, By) := B in let (Cx, Cy) := C in let (Dx, Dy) := D in
    ((Ax - Bx) ^ 2 + (Ay - By) ^ 2 = (Bx - Cx) ^ 2 + (By - Cy) ^ 2 /\ 
    (Bx - Cx) ^ 2 + (By - Cy) ^ 2 = (Cx - Dx) ^ 2 + (Cy - Dy) ^ 2 /\
    (Cx - Dx) ^ 2 + (Cy - Dy) ^ 2 = (Dx - Ax) ^ 2 + (Dy - Ay) ^ 2 /\
    (Ay - By) * (By - Cy) = - (Ax - Bx) * (Bx - Cx) /\
    (By - Cy) * (Cy - Dy) = - (Bx - Cx) * (Cx - Dx) /\
    (Cy - Dy) * (Dy - Ay) = - (Cx - Dx) * (Dx - Ax) /\
    f A + f B + f C + f D = 0) ->
    forall (P: R * R), f P = 0 <->
    putnam_2009_a1_solution.
Proof. Admitted.
End putnam_2009_a1.

Section putnam_2009_a2.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2009_a2_solution : (R -> R) := fun x => Rpower 2 (-1 / 12) * (sin (6 * x + PI / 4) / (cos (6 * x + PI / 4)) ^ 2) ^ (1 / 6).
Theorem putnam_2009_a2: 
    forall (f g h: R -> R), 
    exists (a b: R), a < b /\ 
    forall (x: R), a < x < b -> 
    (ex_derive f x /\ ex_derive g x /\ ex_derive h x /\
    Derive f x = 2 * f (f (g (h x))) + 1 / g (h x) /\ f 0 = 1 /\
    Derive g x = 2 * f (g (g (h x))) + 4 / f (h x) /\ g 0 = 1 /\
    Derive h x = 3 * f (g (h (h x))) + 1 / f (g x) /\ h 0 = 1) ->
    f = putnam_2009_a2_solution.
Proof. Admitted.
End putnam_2009_a2.

Section putnam_2009_a4.
Require Import Ensembles QArith.
Definition putnam_2009_a4_solution := False.
Theorem putnam_2009_a4: 
    forall (E: Ensemble Q), 
    (forall (q: Q), 
    E q <-> q = 0 /\ 
    E q -> E (q + 1) /\ E (q - 1) /\
    E q /\ q <> 0 /\ q <> 1 -> E (1 / (q * (q - 1)))) ->
    forall (q: Q), E q <-> putnam_2009_a4_solution.
Proof. Admitted.
End putnam_2009_a4.

Section putnam_2009_b1.
Require Import List QArith Znumtheory Reals.
Open Scope Q.
Theorem putnam_2009_b1:
    let fix factl (l : list nat) : list nat :=
        match l with
        | nil => nil
        | h :: t => fact h :: t
    end in 
    forall (q: Q), q > 0 ->
    exists (n d: list nat), (forall x, (In x n \/ In x d)-> prime (Z.of_nat x)) /\ 
    inject_Z (Z.of_nat (fold_left Nat.mul (factl n) 1%nat)) / inject_Z (Z.of_nat (fold_left Nat.mul (factl d) 1%nat)) = q.
Proof. Admitted.
End putnam_2009_b1.

Section putnam_2009_b5.
Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2009_b5: 
    forall (f: R -> R) (x: R), (1 < x /\ ex_derive f x /\
    Derive f x = (x ^ 2 - (f x) ^ 2) / (x ^ 2  * ((f x) ^ 2 + 1))) ->
    ~ ex_lim_seq (fun n => f (INR n)).
Proof. Admitted.
End putnam_2009_b5.

Section putnam_2009_b6.
Require Import List ZArith Coquelicot.Coquelicot.
Open Scope Z.
Theorem putnam_2009_b6: 
    forall (n: Z), n > 0 ->
    exists (a: list Z), length a = 2009%nat /\ nth 0 a 0 = 0 /\ nth 2008 a 0 = n /\
    forall (i: nat), and (le 1 i) (lt i 2009) -> exists (j: nat), and (le 0 j) (lt j i) /\ ((exists (k: Z), k > 0 /\ nth i a 0 = nth j a 0 + 2 ^ k) \/ exists (b c: Z), b > 0 /\ c > 0 /\ nth i a 0 = b mod c). 
Proof. Admitted.
End putnam_2009_b6.

Section putnam_2010_a2.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2010_a2_solution (f: R -> R) := exists (c d: R), f = (fun x => c * x + d).
Theorem putnam_2010_a2: 
    forall (f: R -> R) (x: R) (n: nat), Derive f x = (f (x + (INR n)) - f x) / (INR n) <-> putnam_2010_a2_solution f.
Proof. Admitted.
End putnam_2010_a2.

Section putnam_2010_a6.
Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2010_a6: 
    forall (f: R -> R) (x y: R), (x >= 0 /\ x < y -> f x > f y /\ continuity_pt f x /\ Lim_seq (fun n => f (INR n)) = 0) ->
    ~ ex_lim_seq (fun nInc => RInt (fun x => (f x - f (x + 1)) / f x) 0 (INR nInc)).
Proof. Admitted.
End putnam_2010_a6.

Section putnam_2010_b1.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2010_b1_solution := False.
Theorem putnam_2010_b1: 
    exists (a: nat -> R), forall (m: nat), gt m 0 ->
    Series (fun i => (a i) ^ m) = (INR m) <-> putnam_2010_b1_solution.
Proof. Admitted.
End putnam_2010_b1.

Section putnam_2010_b4.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2010_b4_solution (c1 c2: nat -> R) (n m: nat) := exists (a b c d: R), b * c - a  * d = 1 /\ n = 1%nat /\ m = 1%nat /\ c1 = (fun x => match x with | O => b | S O => a | _ => 0 end) /\ c2 = (fun x => match x with | O => d | S O => c | _ => 0 end).
Theorem putnam_2010_b4: 
    let P (c: nat -> R) (n: nat) (x: R) := sum_n (fun i => c i * x ^ i) (n + 1) in
    forall (c1 c2: nat -> R) (n m: nat) (x: R), 
    (P c1 n x) * (P c2 m (x + 1)) - (P c1 n (x + 1)) * (P c2 m x) = 1 <->
    putnam_2010_b4_solution c1 c2 n m.
Proof. Admitted.
End putnam_2010_b4.

Section putnam_2010_b5.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2010_b5_solution := False.
Theorem putnam_2010_b5: 
    exists (f: R -> R), forall (x y: R), x < y -> f x < f y /\ Derive f x = f (f x) <-> putnam_2010_b5_solution.
Proof. Admitted.
End putnam_2010_b5.

Section putnam_2011_a2.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2011_a2_solution := 3 / 2.
Theorem putnam_2011_a2:
    let fix prod_n (m: nat -> R) (n : nat) : R :=
        match n with
        | O => m 0%nat
        | S n' => m n' * prod_n m n'
    end in 
    forall (a: nat -> R), 
    let fix b (n: nat) :=
        match n with
        | O => 1
        | S n' => b n' * a n - 2
    end in
    exists (M: nat),
    (forall (n: nat), a n > 0 /\ b n > 0 /\ -1 * INR M <= b n <= INR M) ->
    Series (fun n => prod_n a n) = putnam_2011_a2_solution.
Proof. Admitted.
End putnam_2011_a2.

Section putnam_2011_a3.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2011_a3_solution := (-1, 2 / PI).
Theorem putnam_2011_a3: 
    exists (c L: R), L > 0 ->
    Lim_seq (fun r => (Rpower (INR r) c * RInt (fun x => x ^ r * sin x) 0 PI / 2) / (RInt (fun x => x ^ r * cos x) 0 PI / 2)) = L <->
    (c, L) = putnam_2011_a3_solution.
Proof. Admitted.
End putnam_2011_a3.

Section putnam_2011_b1.
Require Import Reals ZArith Coquelicot.Coquelicot.
Theorem putnam_2011_b1: 
    forall (h k: Z), Z.gt h 0 /\ Z.gt k 0 ->
    forall (ep: R), ep > 0 /\ exists (m n: Z), ep < Rabs (IZR h * sqrt (IZR m) - IZR k * sqrt (IZR n)) < 2 * ep.
Proof. Admitted.
End putnam_2011_b1.

Section putnam_2011_b3.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2011_b3_solution := True.
Theorem putnam_2011_b3: 
    forall (f g: R -> R) (a b: R), (a < 0 < b /\ forall (x: R), a < x < b -> g x > 0 /\ continuity_pt g 0 /\
    ex_derive f (g 0) /\ ex_derive (fun x => f x / g x) 0) -> ex_derive f 0 <-> putnam_2011_b3_solution.
Proof. Admitted.
End putnam_2011_b3.

Section putnam_2011_b5.
Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2011_b5: 
    forall (a: nat -> R), 
    (exists (A: R), forall (n: nat), 
    Lim_seq (fun nInc => (RInt (fun x => (sum_n (fun i => 1 / (1 + (x - a i) ^ 2)) n)) (-1 * INR nInc) (INR nInc)) ^ 2) <= A * INR n) ->
    exists (B: R), B > 0 /\ forall (n: nat),
    sum_n (fun i => (sum_n (fun j => 1 + (a i - a j) ^ 2)) n) n >= B * INR n ^ 3.
Proof. Admitted.
End putnam_2011_b5.

Section putnam_2011_b6.
Require Import Nat List Factorial Ensembles Finite_sets Reals Znumtheory ZArith Coquelicot.Coquelicot.
Open Scope nat_scope.
Theorem putnam_2011_b6: 
    forall (p: nat), prime (Z.of_nat p) /\ odd p = true ->
    let l := seq 0 p in
    exists (E: Ensemble nat), (forall (n: nat), E n -> and (le 0 n) (lt n p)) /\ cardinal nat E ((p + 1) / 2) /\
    forall (n: nat), E n -> Z.to_nat (floor (sum_n (fun k => INR (fact k * n ^ k)) p)) mod p <> 0.
Proof. Admitted.
End putnam_2011_b6.

Section putnam_2012_a3.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2012_a3_solution (x: R) := sqrt (1 - x ^ 2).
Theorem putnam_2012_a3: 
    forall (f: R -> R) (x: R), (-1 <= x <= 1 /\ continuity_pt f x /\
    f x = (2 - x ^ 2) / 2 * f ((x ^ 2) / (2 - x ^ 2)) /\
    f 0 = 1 /\
    exists (c: R), filterlim (fun x => f x / sqrt (1 - x)) (at_left 1) (locally c)) <->
    f x = putnam_2012_a3_solution x.
Proof. Admitted.
End putnam_2012_a3.

Section putnam_2013_a3.
Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2013_a3: 
    forall (a: nat -> R) (x: R) (n: nat), 0 < x < 1 /\ sum_n (fun i => a i / (1 - x ^ (i + 1))) (n + 1) = 0 ->
    exists (y: R), 0 < y < 1 /\ sum_n (fun i => a i * y ^ i) (n + 1) = 0.
Proof. Admitted.
End putnam_2013_a3.

Section putnam_2013_b1.
Require Import Nat ZArith Reals Coquelicot.Coquelicot.
Open Scope Z.
Definition putnam_2013_b1_solution := IZR (-1).
Theorem putnam_2013_b1: 
    forall (n: Z), n > 0 -> exists (c: nat -> Z), 
    (forall (i: nat), c 1%nat = 1 /\ 
    c i = if (even i) then c (div i 2) else (-1) ^ (Z.of_nat ((i - 1) / 2)) * c (div (pred i) 2)) /\ 
    sum_n (fun i => IZR (c i * c (add i 2))) 2013 = putnam_2013_b1_solution.
Proof. Admitted.
End putnam_2013_b1.

Section putnam_2013_b2.
Require Import Ensembles Finite_sets Reals Coquelicot.Coquelicot.
Definition putnam_2013_b2_solution := 3.
Theorem putnam_2013_b2: 
    forall (E: Ensemble (R -> R)) (f: R -> R), 
    (E f <-> 
    (forall (x: R), exists (a: nat -> R) (N: nat), f x = 1 + sum_n (fun n => a n * cos (2 * PI * INR n * x)) N /\ f x >= 0 /\ 
    forall (n: nat), n mod 3 = 0%nat -> a n = 0)) ->
    exists (maxval: R), E f -> f 0 <= maxval /\ exists (f: R -> R), E f -> f 0 = maxval <->
    maxval = putnam_2013_b2_solution.
Proof. Admitted.
End putnam_2013_b2.

Section putnam_2014_a3.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2014_a3_solution := 3 / 7.
Theorem putnam_2014_a3: 
    let fix prod_n (m: nat -> R) (n : nat) : R :=
        match n with
        | O => m 0%nat
        | S n' => m n' * prod_n m n'
    end in 
    let fix a (n: nat) :=
        match n with
        | O => 5 / 2
        | S n' => (a n') ^ 2 - 2
    end in 
    Lim_seq (fun n => prod_n (fun k => 1 - 1 / a k) n) = putnam_2014_a3_solution.
Proof. Admitted.
End putnam_2014_a3.

Section putnam_2014_b2.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2014_b2_solution := ln (4 / 3) / ln 10.
Theorem putnam_2014_b2: 
    exists (m: R), 
    ((forall (f: R -> R) (x: R), 1 <= x <= 3 /\ -1 <= f x <= 1 /\ RInt f 0 3 = 0 ->
    RInt (fun x => f x / x) 1 3 <= m) /\
    (exists (f: R -> R) (x: R), 1 <= x <= 3 /\ -1 <= f x <= 1 /\ RInt f 0 3 = 0 ->
    RInt (fun x => f x / x) 1 3 = m)) <->
    m = putnam_2014_b2_solution.
Proof. Admitted.
End putnam_2014_b2.

Section putnam_2014_b4.
Require Import Reals Coquelicot.Coquelicot.
Open Scope C.
Theorem putnam_2014_b4: 
    let fix sum_n_C (m: nat -> C) (n : nat) : C :=
        match n with
        | O => m 0%nat
        | S n' => m n' + sum_n_C m n'
    end in 
    forall (n: nat) (r: C), sum_n_C (fun k => (2 * ((INR k) * (INR n - INR k)) * r ^ k)) n = 0 <-> exists (q: R), r = RtoC q. 
Proof. Admitted.
End putnam_2014_b4.

Section putnam_2015_b4.
Require Import Nat List Reals Coquelicot.Coquelicot. From mathcomp Require Import div.
Open Scope nat_scope.
Definition putnam_2015_b4_solution := (17, 21). 
Theorem putnam_2015_b4: 
    let fix exprl2 (l : list nat) : R :=
    match l with
    | a :: b :: c :: _ => Rdiv (2 ^ a) (3 ^ b * 5 ^ c)
    | _ => R0 
    end in 
    let fix exprl (l : list (list nat)) : list R :=
    match l with
    | nil => nil
    | h :: t => exprl2 h :: exprl t
    end in
    forall (E: list (list nat)) (l: list nat), (In l E <-> (length l = 3 /\ let a := nth 0 l 0 in let b := nth 1 l 0 in let c := nth 2 l 0 in a > 0 /\ b > 0 /\ c > 0 /\ a < c + b /\ b < a + c /\ c < a + b)) ->
    exists (p q: nat), coprime p q = true /\ fold_left Rplus (exprl E) R0  = Rdiv (INR p) (INR q) /\  (p, q) = putnam_2015_b4_solution.
Proof. Admitted.
End putnam_2015_b4.
