Section putnam_1999_a5.
Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_1999_a5: 
    let p (a: nat -> R) (x: R) := sum_n (fun i => a i * x ^ i) 2000 in
    forall (a: nat -> R), exists (c: R), 
    Rabs (p a 0) <= c * RInt (fun  x => Rabs (p a x)) (-1) 1.
Proof. Admitted.
End putnam_1999_a5.

Section putnam_1999_a6.
Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_1999_a6:
    let fix a (n: nat) :=
        match n with 
        | O => 1
        | S O => 2
        | S (S O) => 24
        | S (S ((S n'') as n') as n) => (6 * a n ^ 2 * a n'' - 8 * a n * a n' ^ 2) / (a n' * a n'')
    end in 
    forall (n: nat), exists (k: nat), a n = INR (n * k).
Proof. Admitted.
End putnam_1999_a6.

Section putnam_1999_b2.
Require Import List Reals Coquelicot.Coquelicot.
Theorem putnam_1999_b2: 
    forall (a1 a2: nat -> R) (n: nat),
    let p (x: R) := sum_n (fun i => a1 i * x ^ i) n in
    let q (x: R) := sum_n (fun i => a2 i * x ^ i) 2 in
    forall (x: R), p x = q x * (Derive_n (fun x => p x) 2) x /\
    exists (r1 r2: R), r1 <> r2 /\ p r1 = 0 /\ p r2 = 0 ->
    exists (roots: list R), length roots = n /\ NoDup roots /\ forall (r: R), In r roots -> p r = 0.
Proof. Admitted.
End putnam_1999_b2.

Section putnam_2000_a1.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2000_a1_solution (x A: R) := 0 < x < A ^ 2.
Theorem putnam_2000_a1: 
    forall (A: R), A > 0 ->
    forall (x: nat -> R), Series x = A ->
    putnam_2000_a1_solution (Series (fun j => x j ^ 2)) A.
Proof. Admitted.
End putnam_2000_a1.

Section putnam_2000_a4.
Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2000_a4: 
    ex_lim_seq (fun n => sum_n (fun x => sin (INR x) * sin ((INR x) ^ 2)) n).
Proof. Admitted.
End putnam_2000_a4.

Section putnam_2000_b1.
Require Import List Nat Reals ZArith.
Open Scope Z.
Theorem putnam_2000_b1: 
    forall (a b c: nat -> Z) (n: nat),
    (forall (j: nat), and (le 1 j) (le j n) ->
    Z.odd (a j) =true \/ Z.odd (b j) = true \/ Z.odd (c j) = true) ->
    exists (l: list nat), ge (length l) (4 * n / 7) /\ forall (j: nat), In j l -> and (le 1 j) (le j n) /\ 
    exists (r s t: Z), 
    Z.odd (Z.add (Z.add (Z.mul r (a j)) (Z.mul s (b j))) (Z.mul t (c j))) = true.
Proof. Admitted.
End putnam_2000_b1.

Section putnam_2000_b2.
Require Import Nat Reals.
Open Scope R.
Theorem putnam_2000_b2: 
    forall (n m: nat), and (ge n m) (ge m 1) ->
    exists (c: Z),
    INR (gcd m n) / INR n * Binomial.C n m = IZR c.
Proof. Admitted.
End putnam_2000_b2.

Section putnam_2001_a3.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2001_a3_solution (m: Z) := exists (n: Z), m = Z.mul n n \/ m = Z.mul 2 (Z.mul n n).
Theorem putnam_2001_a3: 
    let P (m: Z) (x: R) := x ^ 4 - (2 * IZR m + 4) * x ^ 2 + (IZR m - 2) ^ 2 in
    let p (a: nat -> Z) (x: R) (n: nat) := sum_n (fun i => IZR (a i) * x ^ i) n in
    forall (m: Z), exists (a1 a2: nat -> Z) (n1 n2: nat), forall (x: R),
    P m x = p a1 x n1 * p a2 x n2 <->
    putnam_2001_a3_solution m.
Proof. Admitted.
End putnam_2001_a3.

Section putnam_2001_a5.
Require Import Nat.
Theorem putnam_2001_a5: 
    (exists (a n: nat), a ^ (n + 1) - (a + 1) ^ n = 2001) /\ 
    (exists (a1 n1 a2 n2: nat), a1 ^ (n1 + 1) - (a1 + 1) ^ n1 = 2001 /\ a2 ^ (n2 + 1) - (a2 + 1) ^ n2 = 2001 -> a1 = a2 /\ n1 = n2).
Proof. Admitted.
End putnam_2001_a5.

Section putnam_2001_b2.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2001_b2_solution (x y: R) := x = (3 ^ (1 / 5) + 1) / 2 /\ y = (3 ^ (1 / 5) - 1) / 2.
Theorem putnam_2001_b2: 
    forall (x y: R),
    1 / x + 1 / (2 * y) = (x ^ 2 + 3 * y ^ 2) * (3 * x ^ 2 + y ^ 2) /\
    1 / x - 1 / (2 * y) = 2 * (y ^ 4 - x ^ 4) <->
    putnam_2001_b2_solution x y.
Proof. Admitted.
End putnam_2001_b2.

Section putnam_2001_b3.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2001_b3_solution := 3.
Theorem putnam_2001_b3: 
    forall (n: nat), ge n 0 -> 
    let closest (n: nat) := let n := INR n in Rmin ((n - sqrt n) - IZR (floor (n - sqrt n))) (IZR (floor (n + 1 - sqrt n)) - (n - sqrt n)) in
    Lim_seq (fun n => sum_n (fun n => (Rpower 2 (closest n) + Rpower 2 (- closest n)) / (2 ^ n)) n) = putnam_2001_b3_solution.
Proof. Admitted.
End putnam_2001_b3.

Section putnam_2001_b5.
Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2001_b5: 
    forall (a b: R) (g: R -> R), 0 < a < 1/2 /\ 0 < b < 1/2 /\ continuity g /\
    forall (x: R), g (g x) = a * g x + b * x -> exists (c: R), g x = c * x.
Proof. Admitted.
End putnam_2001_b5.

Section putnam_2001_b6.
Require Import Nat Reals Coquelicot.Coquelicot.
Definition putnam_2001_b6_solution := True.
Theorem putnam_2001_b6: 
    forall (a: nat -> R), 
    (forall (i j: nat), lt i j -> a i < a j) /\ 
    Lim_seq (fun n => a n / INR n) = 0 ->
    forall (n: nat), exists (m: nat), gt m n /\ forall (i: nat), and (le 1 i) (le i (n - 1)) -> a (sub n i) + a (add n i) < 2 * a n /\ a (sub m i) + a (add m i) < 2 * a m.
Proof. Admitted.
End putnam_2001_b6.

Section putnam_2002_a1.
Require Import Reals Factorial Coquelicot.Coquelicot.
Definition putnam_2002_a1_solution (k n: nat) := Rpower (-1 * INR k) (INR n) * INR (fact n).
Theorem putnam_2002_a1: 
    let p (a: nat -> R) (x: R) (n: nat) := sum_n (fun i => a i * x ^ i) n in
    forall (N k: nat), gt k 0 -> exists (a: nat -> R) (n: nat), forall (x: R), 
    (Derive_n (fun x => 1 / (x ^ k - 1)) N) x = (p a x n) / (x ^ k - 1) ^ (n + 1) ->
    p a x 1%nat = putnam_2002_a1_solution k n.
Proof. Admitted.
End putnam_2002_a1.

Section putnam_2002_b3.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_2002_b3: 
    forall (n: nat), ge n 1 ->
    let n := INR n in 1 / (2 * n * exp 1) < 1 / (exp 1) - Rpower (1 - 1 / n) n < 1 / (n * (exp 1)).
Proof. Admitted.
End putnam_2002_b3.

Section putnam_2003_a1.
Require Import Nat List Ensembles Finite_sets Coquelicot.Coquelicot.
Definition putnam_2003_a1_solution (n: nat) := n.
Theorem putnam_2003_a1: 
    forall (n: nat), n > 0 ->
    forall (E: Ensemble (list nat)) (l: list nat),
    E l <->
    forall (i j: nat), i < length l /\ j < length l /\ i < j -> nth i l 0 <= nth j l 0 /\ fold_left add l 0 = n ->
    cardinal (list nat) E (putnam_2003_a1_solution n).
Proof. Admitted.
End putnam_2003_a1.

Section putnam_2003_a2.
Require Import List Reals Coquelicot.Coquelicot.
Theorem putnam_2003_a2: 
    let fix suml (l1 l2 : list R) : list R :=
        match l1, l2 with
        | nil, _ => nil
        | _, nil => nil
        | h1 :: t1, h2 :: t2 => (h1 + h2) :: suml t1 t2
    end in
    forall (n: nat) (a b: list R), length a = n /\ length b = n ->
    (fold_left Rmult a 1) ^ (1 / n) + (fold_left Rmult b 1) ^ (1 / n) <=
    (fold_left Rmult (suml a b) 1) ^ (1 / n).
Proof. Admitted.
End putnam_2003_a2.

Section putnam_2003_a3.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2003_a3_solution := 2 * sqrt 2 - 1.
Theorem putnam_2003_a3: 
    let f (x: R) := Rabs (sin x + cos x + tan x + 1 / tan x + 1 / cos x  + 1 / sin x) in
    exists (minx: R), forall (x: R), f minx <= f x ->
    f minx = putnam_2003_a3_solution.
Proof. Admitted.
End putnam_2003_a3.

Section putnam_2003_a4.
Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2003_a4: 
    forall (a b c A B C: R), a <> 0 /\ A <> 0 /\ forall (x: R),
    Rabs (a * x ^ 2 + b * x + c) <= Rabs (A * x ^ 2 + B * x + C) ->
    Rabs (b ^ 2 - 4 * a * c) <= Rabs (B ^ 2 - 4 * A * C).
Proof. Admitted.
End putnam_2003_a4.

Section putnam_2003_b1.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2003_b1_solution := True.
Theorem putnam_2003_b1: 
    let p (coeff: nat -> R) (x: R) (n: nat) := sum_n (fun i => coeff i * x ^ i) n in
    exists (coeffa coeffb coeffc coeffd: nat -> R) (na nb nc nd: nat), forall (x y: R),
    1 + x * y * (x * y) ^ 2 = (p coeffa x na) * (p coeffc y nc) + (p coeffb x nb) * (p coeffd y nd).
Proof. Admitted.
End putnam_2003_b1.

Section putnam_2003_b3.
Require Import Nat List Reals Coquelicot.Coquelicot.
Theorem putnam_2003_b3:
    let fix lcm_n (args : list nat) : nat :=
        match args with
        | nil => 0%nat
        | h :: args' => div (h * (lcm_n args')) (gcd h (lcm_n args'))
    end in
    let fix prod_n (m: nat -> R) (n : nat) : R :=
        match n with
        | O => m 0%nat
        | S n' => m n' * prod_n m n'
    end in
    forall (n: nat), gt n 0 -> INR (fact n) = prod_n (fun i => INR (lcm_n (seq 0 (div n (i + 1))))) n.
Proof. Admitted.
End putnam_2003_b3.

Section putnam_2003_b4.
Require Import Reals ZArith Coquelicot.Coquelicot.
Theorem putnam_2003_b4: 
    forall (a b c d e: Z), ~ Z.eq a 0 ->
    let a := IZR a in 
    let b := IZR b in 
    let c := IZR c in 
    let d := IZR d in 
    let e := IZR e in 
    exists (r1 r2 r3 r4: R),
    forall (z: R), 
    a * z ^ 4 + b * z ^ 3 + c * z ^ 2 + d * z + e = a * (z - r1) * (z - r2) * (z - r3) * (z - r4) ->
    (exists (p q: Z), r1 + r2 = IZR p / IZR q) /\ r1 + r2 <> r3 + r4 -> exists (p q: Z), r1 * r2 = IZR p / IZR q.
Proof. Admitted.
End putnam_2003_b4.

Section putnam_2003_b6.
Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2003_b6: 
    forall (f: R -> R) (x: R), 0 <= x <= 1 -> continuity_pt f x ->
    RInt (fun x => RInt (fun y => Rabs (f x + f y)) 0 1) 0 1 >= RInt (fun x => Rabs (f x)) 0 1.
Proof. Admitted.
End putnam_2003_b6.

Section putnam_2004_a3.
Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2004_a3:
    let fix u (n: nat) : R:=
        match n with
        | O => 1
        | S O => 1
        | S (S O) => 1
        | S ((S (S n''') as n'') as n') => (INR (fact n) + u n'' * u n') / u n'''
    end in 
    forall (n: nat), u n = IZR (floor (u n)).
Proof. Admitted.
End putnam_2004_a3.

Section putnam_2004_a4.
Require Import List Reals Coquelicot.Coquelicot.
Theorem putnam_2004_a4: 
    forall (n: nat), exists (N: nat) (a: nat -> nat -> R) (c: R), (exists (p q: Z), c = IZR (p / q)) /\ (forall (i j: nat), a i j = -1 \/ a i j = 0 \/ a i j = 1) ->
    forall (x: list R), length x = n ->
    fold_left Rmult x 1 = sum_n (fun i => c * (sum_n (fun j => a i j * nth j x 0) n) ^ (1 / n)) N.
Proof. Admitted.
End putnam_2004_a4.