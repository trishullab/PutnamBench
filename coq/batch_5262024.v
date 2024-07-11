Section putnam_1985_a6.
From mathcomp Require Import ssralg ssrnum fintype seq poly. 
Open Scope ring_scope.
Variable (R: numDomainType).
Definition putnam_1985_a6_solution : {poly R} := 6%:R *: 'X^2 + 5%:R *: 'X + 1%:R.
Theorem putnam_1985_a6
    (g : {poly R} := 3%:R *: 'X^2 + 7%:R *: 'X + 2%:R)
    (Comp_poly_n := fix comp_poly_n (p : {poly R}) (n : nat) : {poly R} :=
        match n with 
        | O => 1
        | S n' => comp_poly (comp_poly_n p n') p
    end)
    : forall (f: {poly R}), f`_0 = 0 -> 
    forall (n: nat),
    let F : {poly R} := Comp_poly_n f n in
    let G : {poly R} := Comp_poly_n g n in
    (\sum_(i < size F) F`_i)  = (\sum_(i < size G) G`_i)
    <-> f = putnam_1985_a6_solution.
Proof. Admitted.
End putnam_1985_a6.

Section putnam_1985_b2.
Require Import Nat List ZArith Znumtheory.
Open Scope nat_scope.
Definition putnam_1985_b2_solution := repeat 101 99.
Theorem putnam_1985_b2
    (P := fix p (n x: nat) : nat :=
        match (n,x) with
        | (O, x) => 1
        | (S n', x) => (n' + 1) * p n' (x + 1)
    end) 
    (val := P 100 1)
    : exists (l: list nat), forall (x: nat), (In x l -> prime (Z.of_nat x)) ->
    fold_left mul l 1 = val <-> l = putnam_1985_b2_solution.
Proof. Admitted.
End putnam_1985_b2.

Section putnam_1985_b3.
Require Import Nat List.
Theorem putnam_1985_b3
    (exactly_equal : ((nat*nat) -> nat) -> (nat*nat) -> Prop := fun a ij => 
        (exists  (l8: list (nat*nat)), length l8 = 8 /\ NoDup l8 /\ (forall (n: (nat*nat)), In n l8 -> a n = a ij)) /\
        (~exists (l9: list (nat*nat)), length l9 = 9 /\ NoDup l9 /\ (forall (n: (nat*nat)), In n l9 -> a n = a ij)))   
    : forall (a: (nat*nat) -> nat),
    (forall (ij: (nat*nat)), exactly_equal a ij) /\ 
    (exists (ij: (nat*nat)), a ij > fst ij*snd ij).
Proof. Admitted.
End putnam_1985_b3.

Section putnam_1985_b5.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1985_b5_solution := sqrt (PI / 1985) * exp (-3970).
Theorem putnam_1985_b5
    : Lim_seq (fun n => RInt (fun x => Rpower x (-1/2) * exp (-1985 * (x + 1/x))) 0 (INR n)) = putnam_1985_b5_solution.
Proof. Admitted.
End putnam_1985_b5.

Section putnam_1986_a1.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1986_a1_solution := 18.
Theorem putnam_1986_a1
    (f : R -> R := fun x => pow x 3)
    (on_S : R -> Prop := fun x => pow x 4 - 13 * pow x 2 + 36 <= 0)
    : exists (m: R), 
    (forall (x: R), on_S x -> m >= f x) /\
    (exists (x: R), on_S x -> m = f x) 
    <-> m = putnam_1986_a1_solution.
Proof. Admitted.
End putnam_1986_a1.

Section putnam_1986_a2.
Require Import Nat.
Definition putnam_1986_a2_solution := 3.
Theorem putnam_1986_a2
    : 10 ^ (20000) / (10 ^ (100) + 3) mod 10 = putnam_1986_a2_solution.
Proof. Admitted.
End putnam_1986_a2.

Section putnam_1986_a3.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1986_a3_solution := PI / 2.
Theorem putnam_1986_a3
    : Series (fun n =>  1/ atan (pow (INR n) 2 + INR n + 1)) = putnam_1986_a3_solution.
Proof. Admitted.
End putnam_1986_a3.

Section putnam_1986_a6.
Require Import Reals Factorial Coquelicot.Coquelicot.
Definition putnam_1986_a6_solution (m: nat -> R) (n: nat) := 
    let fix prod_n (m: nat -> R) (n : nat) : R :=
        match n with
        | O => m 0%nat
        | S n' => m n' * prod_n m n'
    end in
    prod_n m n / INR (fact n).
Theorem putnam_1986_a6
    (n: nat)
    (a m: nat -> R) 
    (ham : forall i j: nat, Nat.lt i j -> 0 < m i < m j)
    (p : R -> R := fun x => sum_n (fun n => a n * Rpower x (m n)) n)
    : exists (q: R -> R), forall (x: R), 
    p x = (1 - x) ^ n * (q x) ->
    q 1 = putnam_1986_a6_solution m n.
Proof. Admitted.
End putnam_1986_a6.

Section putnam_1986_b2.
Require Import Reals Ensembles Finite_sets Coquelicot.Coquelicot.
Open Scope C.
Definition putnam_1986_b2_solution (xyz : C*C*C) := xyz = (RtoC 0, RtoC 0, RtoC 0) \/ xyz = (RtoC 1, RtoC 0, RtoC (-1)) \/ xyz = (RtoC (-1), RtoC 1, RtoC 0) \/ xyz = (RtoC 0, RtoC (-1), RtoC 1).
Theorem putnam_1986_b2
    (n: nat)
    (E: Ensemble (C*C*C) := fun '(x, y, z) => x * (x - 1) * 2 * y * z = y * (y - 1) * 2 * z * x /\ y * (y - 1) * 2 * z * x = z * (z - 1) + 2 * x * y) 
    (xyz: C*C*C)
    (x := fst (fst xyz))
    (y := snd (fst xyz))
    (z := snd xyz)
    : cardinal (C*C*C) E n /\ putnam_1986_b2_solution xyz.
Proof. Admitted.
End putnam_1986_b2.

Section putnam_1987_a3.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1987_a3_solution := (False, True).
Theorem putnam_1987_a3
    (f g: R -> R) 
    (x: R)
    : (((Derive_n f 2) x - 2 * (Derive_n f 1) x + f x = 2 * exp x /\ forall (x: R), f x > 0 -> forall (x: R), Derive_n f 1 x > 0) <-> fst putnam_1987_a3_solution) /\ 
    ((((Derive_n g 2) x - 2 * (Derive_n g 1) x + g x = 2 * exp x /\ forall (x: R), Derive_n g 1 x > 0) -> forall (x: R), g x > 0) <-> snd putnam_1987_a3_solution).
Proof. Admitted.
End putnam_1987_a3.

Section putnam_1987_b1.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1987_b1_solution := 1.
Theorem putnam_1987_b1
    : RInt (fun x => ln (9 - x) ^ (1/2) / ( ln (9 - x) ^ (1/2)  + ln (x + 3) ^ (1/2))) 2 4 = putnam_1987_b1_solution.
Proof. Admitted.
End putnam_1987_b1.

Section putnam_1987_b2.
Require Import Binomial Reals Coquelicot.Coquelicot.
Theorem putnam_1987_b2
    : forall (n r s: nat), ge n (r + s) -> 
    sum_n (fun i => Binomial.C s i / Binomial.C n (r + i)) s = (INR n + 1)/((INR n + 1 - INR s) * Binomial.C (n - s) r).
Proof. Admitted.
End putnam_1987_b2.

Section putnam_1987_b4.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1987_b4_solution := (-1, PI).
Theorem putnam_1987_b4
    (A := fix a (i j: nat) : (R * R):=
        match (i, j) with
        | (O, O) => (0.8, 0.6)
        | (S i', S j') => 
            let xn := fst (a i' j') in 
            let yn := snd (a i' j') in 
            (xn * cos yn - yn * sin yn,xn * sin yn + yn * cos yn)
        | (_, _) => (0, 0)
    end)
    : Lim_seq (fun n => fst (A n 0%nat)) = fst putnam_1987_b4_solution /\
    Lim_seq (fun n => snd (A 0%nat n)) = snd putnam_1987_b4_solution.
Proof. Admitted.
End putnam_1987_b4.

(* Note: omitted the second part of the proof - an example of existence - due to lack of full solution description *)
Section putnam_1988_a2.
Require Import Basics Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1988_a2_solution := True.
Theorem putnam_1988_a2
    (f : R -> R := fun x => exp (pow x 2))
    : exists (a b: R) (g: R -> R), 
    forall (x: R), a < x < b -> Derive (compose f g) = compose (Derive f) (Derive g)
    <-> putnam_1988_a2_solution.
Proof. Admitted.
End putnam_1988_a2.

Section putnam_1988_a3.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1988_a3_solution (a: R) := a > 1/2.
Theorem putnam_1988_a3
   : forall (a: R), ex_lim_seq (fun m => sum_n (fun n => Rpower (1/INR n * (1 / sin (1/INR n) - 1)) a) m) <-> putnam_1988_a3_solution a.
Proof. Admitted.
End putnam_1988_a3.

Section putnam_1988_a5.
Require Import Basics Reals.
Open Scope R.
Theorem putnam_1988_a5
    : exists! (f: R -> R), 
    forall (x: R), (x > 0 -> f x > 0) ->
    (compose f f) x = 6 * x - f x.
Proof. Admitted.
End putnam_1988_a5.

Section putnam_1988_b1.
Require Import ZArith Znumtheory.
Open Scope Z.
Theorem putnam_1988_b1
    : forall (n: Z), n > 3 /\ ~ prime n -> exists (a b c: Z), a > 0 /\ b > 0 /\ c > 0 /\ n = a * b + b * c + c * a + 1.    
Proof. Admitted.
End putnam_1988_b1.

Section putnam_1988_b2.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1988_b2_solution := True.
Theorem putnam_1988_b2
    : forall (a: R), a >= 0 -> forall (x: R), pow (x + 1) 2 >= a * (a + 1) ->
    pow x 2 >= a * (a - 1) <-> putnam_1988_b2_solution.
Proof. Admitted.
End putnam_1988_b2.

Section putnam_1988_b4.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1988_b4
    (b : nat -> (nat -> R) -> R := fun n a => Rpower (a n) (INR n/(INR n + 1)))
    : forall (a: nat -> R) (n: nat), a n > 0 ->
    ex_lim_seq (fun n => sum_n a n) -> ex_lim_seq (fun n => sum_n (fun m => (b m a)) n).
Proof. Admitted.
End putnam_1988_b4.

Section putnam_1988_b6.
Require Import Ensembles Finite_sets.
Theorem putnam_1988_b6
    (triangular : nat -> Prop := fun n => exists (m: nat), n = Nat.div (m * (m + 1)) 2)
    (E: Ensemble (nat*nat) := fun '(a, b) => exists (m: nat), triangular m <-> triangular (Nat.mul a m + b))
    : ~ exists (n: nat), cardinal (nat*nat) E n.
Proof. Admitted.
End putnam_1988_b6.

Section putnam_1989_a1.
Require Import Nat Reals ZArith Znumtheory Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1989_a1_solution (x: R) := x = INR 101.
Theorem putnam_1989_a1
    (a : nat -> R := fun n => sum_n (fun n => if odd n then INR (10^(n-1)) else R0) (2*n+2))
    : forall (n: nat), prime (floor (a n)) -> putnam_1989_a1_solution (a n).
Proof. Admitted.
End putnam_1989_a1.

Section putnam_1989_a2.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1989_a2_solution (a b: R) := (exp (pow (a*b) 2) - 1)/(a * b).
Theorem putnam_1989_a2
    (a b: R)
    (f : R -> R -> R := fun x y => Rmax (pow (b*x) 2) (pow (a*y) 2))
    : RInt (fun x => (RInt (fun y => exp (f x y)) 0 b)) 0 a = putnam_1989_a2_solution a b.
Proof. Admitted.
End putnam_1989_a2.

Section putnam_1989_a3.
Require Import Reals Coquelicot.Coquelicot. From Coqtail Require Import Cpow.
Open Scope C.
Theorem putnam_1989_a3
    (f : C -> C := fun z => 11 * Cpow z 10 + 10 * Ci * Cpow z 9 + 10 * Ci * z - 11)
    : forall (x: C), f x = 0 <-> Cmod x = R1.
Proof. Admitted.
End putnam_1989_a3.

Section putnam_1990_a1.
Require Import Nat Factorial Coquelicot.Coquelicot.
Definition putnam_1990_a1_solution := (fun n => fact n, fun n => pow 2 n).
Theorem putnam_1990_a1
    (A := fix a (n: nat) : nat :=
        match n with
        | O => 2
        | S O => 3
        | S (S O) => 6
        | S (S (S n''' as n'') as n') => (n + 4) * a n' - 4 * n * a n'' + (4 * n - 8) * a n'''
    end)
    : exists (b c: nat -> nat), forall (n: nat), A n = b n + c n <->
    (b,c) = putnam_1990_a1_solution. 
Proof. Admitted.
End putnam_1990_a1.

Section putnam_1990_a2.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1990_a2_solution := True.
Theorem putnam_1990_a2
    (numform : R -> Prop := fun x => exists (n m: nat), x = pow (INR n) (1/3) - pow (INR m) (1/3))
    : exists (s: nat -> R), forall (i: nat), numform (s i) /\ Lim_seq s = sqrt 2 <-> putnam_1990_a2_solution.
Proof. Admitted.
End putnam_1990_a2.
