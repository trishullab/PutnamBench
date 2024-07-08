Section putnam_1994_b2.
Require Import List Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1994_b2_solution (c: R) := c < 243 / 8.
Theorem putnam_1994_b2
    (f : R -> R -> R := fun c x => pow x 4 + 9 * pow x 3 + c * pow x 2 + 9 * x + 4)
    (g : R -> R -> R -> R := fun m x b  => m * x + b)
    (hintersect : R -> Prop := fun c => exists(m b: R), exists (l: list R), eq (length l) 4%nat /\ NoDup l /\ forall (r: R), In r l -> f c r = g m b r)
    : forall (c: R), hintersect c <-> putnam_1994_b2_solution c.
Proof. Admitted.
End putnam_1994_b2.

Section putnam_1994_b3.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1994_b3_solution (k: R) := k <= 1.
Theorem putnam_1994_b3
    : forall (k: R) (f: R -> R) (x: R), f x > 0 /\ ex_derive f x /\ (Derive f) x > f x ->
    exists (N: R), x > N -> f x > exp (k * x) <-> putnam_1994_b3_solution k.
Proof. Admitted.
End putnam_1994_b3.

Section putnam_1994_b4.
Require Import Nat List Reals Coquelicot.Coquelicot. 
Import ListNotations.
Open Scope R.
Theorem putnam_1994_b4 
    (gcdn := fix gcd_n (args : list nat) : nat :=
        match args with
        | nil => 0%nat
        | h :: args' => gcd h (gcd_n args')
    end)
    (Mmultn := fix Mmult_n {T : Ring} {n : nat} (A : matrix n n) (p : nat) :=
        match p with
        | O => A
        | S p' => @Mmult T n n n A (Mmult_n A p')
    end)
    (A := mk_matrix 2 2 (fun i j => 
        match i, j with
        | 0, 0 => 3 | 0, 1 => 2
        | 1, 0 => 4 | 1, 1 => 3
        | _, _ => 0
    end))
    (I := mk_matrix 2 2 (fun i j => 
        match i, j with
        | 0, 0 => 1 | 0, 1 => 0
        | 1, 0 => 0 | 1, 1 => 1
        | _, _ => 0
    end))
    (dn_mat := fun n => Mplus (Mmultn A n) (opp I))
    (dn := fun n => gcdn [Z.to_nat (floor (coeff_mat 0 (dn_mat n) 0 0)); 
                              Z.to_nat (floor (coeff_mat 0 (dn_mat n) 0 1)); 
                              Z.to_nat (floor (coeff_mat 0 (dn_mat n) 1 0)); 
                              Z.to_nat (floor (coeff_mat 0 (dn_mat n) 1 1))])
    : ~ ex_lim_seq (fun n => INR (dn n)).
Proof. Admitted.
End putnam_1994_b4.

Section putnam_1994_b5.
Require Import Basics ZArith Zpower Reals Coquelicot.Coquelicot.
Theorem putnam_1994_b5
    (composen := fix compose_n {A: Type} (f : A -> A) (n : nat) :=
        match n with
        | O => fun x => x
        | S n' => compose f (compose_n f n')
    end)
    (fa : R -> R -> R := fun a x => IZR (floor (a * x)))
    : forall (n: Z), Z.gt n 0 ->
    exists (a: R), forall (k: Z), and (Z.ge 1 k) (Z.ge k n) -> (composen (fa a) (Z.to_nat k)) (IZR (Z.pow n 2)) = IZR (Z.pow n 2 - k) /\ IZR (Z.pow n 2 - k) = fa (Rpower a (IZR k)) (IZR (Z.pow n 2)).
Proof. Admitted.
End putnam_1994_b5.

Section putnam_1994_b6.
Require Import Nat.
Theorem putnam_1994_b6
    (n : nat -> nat := fun a => 101 * a -  100 * pow 2 a)
    : forall a b c d : nat, 0 <= a <= 99 /\ 0 <= b <= 99 /\  0 <= c <= 99 /\  0 <= d <= 99 /\ n a + n b mod 10100 = n c + n d ->
    (a,b) = (c,d).
Proof. Admitted.
End putnam_1994_b6.

Section putnam_1995_a2.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1995_a2_solution (a b: R) := a = b.
Theorem putnam_1995_a2
    : forall (a b: R), a > 0 /\ b > 0 /\ ex_lim_seq (fun n => RInt (fun x => sqrt (sqrt (x + a) - sqrt x) - sqrt (sqrt x - (x - b))) b (INR n)) <-> putnam_1995_a2_solution a b.
Proof. Admitted.
End putnam_1995_a2.

Section putnam_1995_b4.
Require Import Reals ZArith Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1995_b4_solution (a b c d: Z) := (a, b, c, d) = (3%Z,1%Z,5%Z,2%Z).
Theorem putnam_1995_b4
    : exists (a b c d: Z), exists (contfrac: R), contfrac = 2207 - 1 / contfrac -> pow contfrac (1 / 8) = (IZR a + IZR b * sqrt (IZR c))/IZR d <-> putnam_1995_b4_solution a b c d.
Proof. Admitted.
End putnam_1995_b4.

Section putnam_1996_a1.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1996_a1_solution := (1 + sqrt 2) / 2.
Theorem putnam_1996_a1 
    (minA : R)
    (packable : R -> R -> R -> R -> Prop := fun n1 n2 a1 a2 => (n1 + n2) <= Rmax a1 a2 /\ Rmax n1 n2 <= Rmin a1 a2)
    (hminA : R -> R -> R -> R -> Prop := fun n1 n2 a1 a2 => a1 * a2 = minA /\ packable n1 n2 a1 a2)
    (hminAlb : R -> R -> R -> R -> Prop :=  fun n1 n2 a1 a2 => forall (A: R), a1 * a2 = A /\ (packable n1 n2 a1 a2 -> minA <= A))
    : (forall (n1 n2: R), pow n1 2 + pow n2 2 = 1 -> exists a1 a2 : R, hminA n1 n2 a1 a2 /\ hminAlb n1 n2 a1 a2) <-> minA =putnam_1996_a1_solution.
Proof. Admitted.
End putnam_1996_a1.

Section putnam_1996_a5.
Require Import Binomial Reals Znumtheory Coquelicot.Coquelicot. From mathcomp Require Import div.
Open Scope R.
Theorem putnam_1996_a5 
    (p: nat)
    (hp : prime (Z.of_nat p) /\ gt p 3)
    (k := floor (2 * INR p / 3))
    : exists (m: nat), sum_n (fun i => Binomial.C p (i+1)) (Z.to_nat k) = INR m * pow (INR p) 2.
Proof. Admitted.
End putnam_1996_a5.

Section putnam_1996_a6.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1996_a6_solution (c: R) (f: R -> R) :=  if Rle_dec c (1/4) then exists (d: R), f = (fun _ => d) else forall (x: R), 0 <= x <= c -> continuity_pt f x /\ f 0 = f c /\ forall (x: R), x > 0 -> f x = f (pow x 2 + c) /\ (forall (x: R), x < 0 -> f x = f (-x)).
Theorem putnam_1996_a6
    (c: R)
    (hc : c > 0)
    : forall (f: R -> R), continuity f /\ forall (x: R), f x = pow x 2 + c <-> putnam_1996_a6_solution c f.
Proof. Admitted.
End putnam_1996_a6.

Section putnam_1996_b2.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1996_b2
    (oddfact := fix odd_fact (n : nat) : R :=
        match n with
        | O => 1 
        | S n' => (2 * INR n - 1) * odd_fact n'
    end)
    : forall (n: nat), gt n 0 -> pow ((2 * INR n - 1) / exp 1) ((2 * n - 1) / 2) < oddfact n < pow ((2 * INR n + 1) / exp 1) ((2 * n + 1) / 2).
Proof. Admitted.
End putnam_1996_b2.

Section putnam_1996_b3.
Require Import Nat List Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1996_b3_solution : nat -> R := fun n => (2 * INR n ^ 3 + 3 * INR n ^ 2 - 11 * INR n + 18) / 6.
Theorem putnam_1996_b3
    (m: nat -> R)
    (n: nat)
    (hn : ge n 2)
    (hmub : sum_n (fun i => INR ((nth i (seq 1 (S n)) 0%nat) * (nth ((i + 1) mod n) (seq 1 (S n)) 0%nat))) n <= m n)
    (hm : sum_n (fun i => INR ((nth i (seq 1 (S n)) 0%nat) * (nth ((i + 1) mod n) (seq 1 (S n))) 0%nat)) n = m n)
    : m = putnam_1996_b3_solution.
Proof. Admitted.
End putnam_1996_b3.

Section putnam_1996_b4.
Require Import Factorial Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1996_b4_solution := False.
Theorem putnam_1996_b4
    (Mmultn := fix Mmult_n {T : Ring} {n : nat} (A : matrix n n) (p : nat) :=
        match p with
        | O => A
        | S p' => @Mmult T n n n A (Mmult_n A p')
    end)
    (scale_c : R -> matrix 2 2 -> matrix 2 2 := fun c A =>  mk_matrix 2 2 (fun i j => c * coeff_mat 0 A i j))
    (sinA_mat : nat -> matrix 2 2 -> matrix 2 2 := fun n A => scale_c ((pow (-1) n) / INR (fact (2 * n + 1))) (Mmultn A (Nat.add (Nat.mul 2 n) 1)))
    : exists (A: matrix 2 2), 
    Series (fun n => coeff_mat 0 (sinA_mat n A) 0 0) = 1    /\
    Series (fun n => coeff_mat 0 (sinA_mat n A) 0 1) = 1996 /\
    Series (fun n => coeff_mat 0 (sinA_mat n A) 1 0) = 0    /\
    Series (fun n => coeff_mat 0 (sinA_mat n A) 1 1) = 1    <->
    putnam_1996_b4_solution.
Proof. Admitted.
End putnam_1996_b4.

Section putnam_1997_a3.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1997_a3_solution := sqrt (exp 1).
Theorem putnam_1997_a3
    (evenfact := fix even_fact (n : nat) : R :=
        match n with
        | O => 1 
        | S n' => (2 * INR n) * even_fact n'
    end)
    (evenfactsqr := fix even_fact_sqr (n : nat) : R :=
        match n with
        | O => 1 
        | S n' => pow (2 * INR n) 2 * evenfact n'
    end)
    (f : R -> R := fun x => Series (fun n => pow (-1) n * pow x (2 * n + 1) / evenfact n))
    (g : R -> R := fun x => Series (fun n => pow x (2 * n) / evenfactsqr n))
    : Lim_seq (fun n => sum_n (fun m => RInt (fun x => f x * g x) 0 (INR m)) n) = putnam_1997_a3_solution.
Proof. Admitted.
End putnam_1997_a3.

Section putnam_1997_a5.
Require Import Nat Ensembles Finite_sets List Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1997_a5_solution := True.
Theorem putnam_1997_a5
    (E: Ensemble (list nat) := fun l => length l = 10%nat /\ sum_n (fun i => 1/ INR (nth i l 0%nat)) 10 = 1)
    (m: nat)
    : cardinal (list nat) E m /\ odd m = true <-> putnam_1997_a5_solution.
Proof. Admitted.
End putnam_1997_a5.

Section putnam_1997_a6.
Require Import Binomial Nat Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1997_a6_solution (n k: nat) := Binomial.C (n - 1) (k - 1).
Theorem putnam_1997_a6
    (X := fix x (n: nat) (c: R) (k: nat) : R :=
        match k with
        | O => 0 
        | S O => 1 
        | S ((S k'') as k') => (c * x n c k' - INR (n - k) * x n c k'') / INR k'
    end)
    : forall (n: nat), exists (maxc: R), forall (c: R),
    X n c (S n) = 0 /\ X n maxc (S n) = 0 -> c <= maxc ->
    forall (k: nat), and (le 1 k) (le k n) -> 
    X n c k = putnam_1997_a6_solution n k.
Proof. Admitted.
End putnam_1997_a6.

Section putnam_1997_b1.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1997_b1_solution (n: nat) := INR n.
Theorem putnam_1997_b1
    (rnd : R -> R := fun x => Rmin (Rabs (IZR (floor x) - x)) (Rabs (IZR (floor (x + 1)) - x)))
    : forall (n: nat), gt n 0 -> sum_n (fun m => Rmin (rnd ((INR m + 1) / (6 * INR n))) (rnd ((INR m + 1) / (3 * INR n)))) (6 * n - 1) = putnam_1997_b1_solution n.
Proof. Admitted.
End putnam_1997_b1.

Section putnam_1997_b2.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1997_b2 
    (f g: R -> R)
    (habsbdd : R -> Prop := fun m => forall x, -m <= abs (f x) <= m)
    : exists (M: R), forall (x: R), ex_derive_n f 2 x /\ g x >= 0 /\ f x + Derive_n f 2 x = -x * g x * Derive f x -> habsbdd M.
Proof. Admitted.
End putnam_1997_b2.

Section putnam_1997_b3.
Require Import Reals Coquelicot.Coquelicot. From mathcomp Require Import div.
Open Scope R.
Definition putnam_1997_b3_solution (n: nat) := and (le 1 n) (le n 4) \/ and (le 20 n) (le n 24)  \/ and (le 100 n) (le n 104) \/ and (le 120 n) (le n 124).
Theorem putnam_1997_b3
    : forall (n: nat), gt n 0 -> exists (p q: nat), gt p 0 /\ gt q 0 /\ coprime p q = true /\
    sum_n (fun m => 1 / INR (m + 1)) n = INR p / INR q -> neq (q mod 5) 0 -> putnam_1997_b3_solution n.
Proof. Admitted.
End putnam_1997_b3.

Section putnam_1997_b5.
Require Import Nat.
Theorem putnam_1997_b5 
    (pown := fix pow_n (b n: nat) : nat :=
      match n with
      | O => 1
      | S n' => b * pow_n b n'
    end)
    : forall (n: nat), n >= 2 -> pown 2 n-1 mod n = pown 2 n-2.
Proof. Admitted.
End putnam_1997_b5.

Section putnam_1998_a4.
Require Import Nat ZArith Reals Coquelicot.Coquelicot.
Open Scope nat_scope.
Definition putnam_1998_a4_solution (n: nat) := exists (k: nat), n = 6 * k + 1.
Theorem putnam_1998_a4
    (concatenate : nat -> nat -> nat := fun x y => Nat.pow 10 (Z.to_nat (floor (Rdiv (ln (INR y)) (ln 10))) + 1) * x + y)
    (a := fix A (n: nat) :=
        match n with
        | O => O
        | S O => 1
        | S ((S n'') as n') => concatenate (A n') (A n'')
    end)
    : forall (n: nat), a (n+1) mod 11 = 0 <-> putnam_1998_a4_solution n.
Proof. Admitted.
End putnam_1998_a4.

Section putnam_1998_b1.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1998_b1_solution := 1.
Theorem putnam_1998_b1
    (f : R -> R := fun x => ((x + 1 / x) ^ 6 - (x ^ 6 + 1 / (x ^ 6)) - 2) / (x + 1 / x) ^ 3 + (x ^ 3 + 1 / (x ^ 3)))
    (m : R)
    (hm : exists (x: R), x > 0 -> f x = m) 
    (hmub : forall (x: R), x > 0 -> f x >= m) 
    : m = putnam_1998_b1_solution.
Proof. Admitted.
End putnam_1998_b1. 

Section putnam_1998_b4.
Require Import Nat ZArith Reals Coquelicot.Coquelicot.
Definition putnam_1998_b4_solution (m n: nat) := exists (m2 n2: nat), m mod (2 ^ m2) = 0%nat /\ m mod (2 ^ (m2 + 1)) <> 0%nat /\ n mod (2 ^ n2) = 0%nat /\ n mod (2 ^ n2 + 1) <> 0%nat.
Theorem putnam_1998_b4
    : forall (m n: nat), sum_n (fun i =>  Rpower (-1) (IZR (floor (INR i / INR m)) + IZR (floor (INR i / INR n)))) (m * n - 1) = 0 <-> putnam_1998_b4_solution m n.
Proof. Admitted.
End putnam_1998_b4.

Section putnam_1998_b5.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1998_b5_solution : nat := 1.
Theorem putnam_1998_b5
    (N := sum_n (fun i => 10^i) 1998)
    : Z.to_nat (floor (10^1000 * sqrt N)) mod 10 = putnam_1998_b5_solution.
Proof. Admitted.
End putnam_1998_b5.

Section putnam_1999_a4.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1999_a4_solution := 9/32.
Theorem putnam_1999_a4: 
    Series (fun m => Series (fun n => (INR m ^ 2 * INR n) / (3 ^ m *(INR n * 3 ^ m + INR m * 3 ^ n)))) = putnam_1999_a4_solution.
Proof. Admitted.
End putnam_1999_a4.