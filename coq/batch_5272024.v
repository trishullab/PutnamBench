Section putnam_1990_a5.
From mathcomp Require Import matrix ssralg.
Open Scope ring_scope.
Theorem putnam_1990_a5 
    (R : ringType) 
    (n : nat) 
    (A B : 'M[R]_n) 
    : mulmx (mulmx (mulmx A B) A) B = 0 ->
    mulmx (mulmx (mulmx B A) B) A = 0.
Proof. Admitted.
End putnam_1990_a5.

Section putnam_1990_b1.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1990_b1_solution (f: R -> R) := f = (fun x => sqrt 1990 * exp x) /\ f = (fun x => -sqrt 1990 * exp x).
Theorem putnam_1990_b1
    (f : R -> R)
    : continuity f /\ forall x, ex_derive_n f 1 x -> 
    forall x, pow (f x) 2 = RInt (fun t => pow (f t) 2 + pow ((Derive f) t) 2) 0 x + 1990 ->
    putnam_1990_b1_solution f.
Proof. Admitted.
End putnam_1990_b1.

Section putnam_1990_b2.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1990_b2 
    (x z : R)
    (hxz : Rabs x < 1 /\ Rabs z > 1)
    (P : nat -> R := fun j => (sum_n (fun i => 1 - z * x ^ i) j) / (sum_n (fun i => z - x ^ i) j+1))
    : 1 + Series (fun j => 1 + x ^ (j+1) * P j) = 0.
Proof. Admitted.
End putnam_1990_b2.

Section putnam_1990_b5.
Require Import Reals Ensembles Finite_sets Coquelicot.Coquelicot.
Definition putnam_1990_b5_solution := True.
Open Scope R.
Theorem putnam_1990_b5 
    (a : nat -> R) 
    (pn : nat -> R -> R := fun n x => sum_n (fun i => a i * pow x i) n)
    : forall (n: nat), gt n 0 -> exists (roots: Ensemble R), cardinal R roots n /\ forall (r: R), roots r <-> pn n r = 0 <->
    putnam_1990_b5_solution.
Proof. Admitted.
End putnam_1990_b5.

Section putnam_1991_a2.
From mathcomp Require Import matrix ssralg ssrbool.
Open Scope ring_scope.
Definition putnam_1991_a2_solution := False.
Theorem putnam_1991_a2
    (R : comUnitRingType) 
    (n : nat) 
    (A B : 'M[R]_n) 
    (hAB : A <> B)
    : mulmx (mulmx A A) A = mulmx (mulmx B B) B /\
    mulmx (mulmx A A) B = mulmx (mulmx B B) A ->
    (mulmx A A + mulmx B B) \in unitmx <-> putnam_1991_a2_solution.
Proof. Admitted.
End putnam_1991_a2.

Section putnam_1991_a5.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1991_a5_solution := 1/3.
Theorem putnam_1991_a5
    (m: R)
    (hm : exists (y: R), 0 <= y <= 1 -> m >= RInt (fun x => sqrt (pow x 4 + pow (y - pow y 2) 2)) 0 y)
    (hmub : forall (y: R), 0 <= y <= 1 -> m >= RInt (fun x => sqrt (pow x 4 + pow (y - pow y 2) 2)) 0 y)
    : m = putnam_1991_a5_solution.
Proof. Admitted.
End putnam_1991_a5.

Section putnam_1991_b1.
Require Import Nat Coquelicot.Coquelicot.
Open Scope nat_scope.
Definition putnam_1991_b1_solution (A: nat) := exists (m: nat), A = pow m 2.
Theorem putnam_1991_b1
    (eS : nat -> nat := fun n => sub n (pow (sqrt n) 2))
    (a_seq := fix a (A k: nat) :=
        match k with
        | O => A
        | S k' => a A k' + eS (a A k')
    end)
    : forall (A: nat), A > 0 -> Lim_seq (fun k => Raxioms.INR (a_seq A k)) = Rdefinitions.R0 <-> putnam_1991_b1_solution A.
Proof. Admitted.
End putnam_1991_b1.

Section putnam_1991_b2.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1991_b2
    (f g: R -> R)
    (hfg : ~ exists (c: R), f = (fun _ => c) \/ g = (fun _ => c) /\ forall x, ex_derive_n f 1 x /\ forall x, ex_derive_n g 1 x)
    : forall (x y: R), f (x + y) = f x * f y - g x * g y /\ g (x + y) = f x * g y - g x * f y ->
    Derive f 0 = 0 -> forall (x: R), pow (f x) 2 + pow (g x) 2 = 1.
Proof. Admitted.
End putnam_1991_b2.

Section putnam_1991_b4.
Require Import Nat Reals ZArith Znumtheory Binomial Coquelicot.Coquelicot.
Theorem putnam_1991_b4
    (p: nat)
    (hp : odd p = true /\ prime (Z.of_nat p)) 
    (expr : R := sum_n (fun j => Binomial.C p j * Binomial.C (p + j) j) p)
    : (floor expr) mod (Z.pow (Z.of_nat p) 2) = Z.add (Z.pow 2 (Z.of_nat p)) 1.
Proof. Admitted.
End putnam_1991_b4.

Section putnam_1991_b5.
Require Import Reals Nat ZArith Znumtheory Ensembles Finite_sets Coquelicot.Coquelicot. From mathcomp Require Import fintype seq ssrbool.
Open Scope R.
Definition putnam_1991_b5_solution (p: nat) : nat := p / 4 + 1.
Theorem putnam_1991_b5 
    (p: nat)
    (hp : odd p = true /\ prime (Z.of_nat p))
    (A: Ensemble Z := fun z => exists (m: 'I_p), z = Z.of_nat (pow (nat_of_ord m) 2))
    (B: Ensemble Z := fun z => exists (m: 'I_p), z = Z.of_nat (pow (nat_of_ord m) 2 + 1))
    (C : Ensemble Z := Intersection Z A B)
    : cardinal Z C (putnam_1991_b5_solution p).
Proof. Admitted.
End putnam_1991_b5.

Section putnam_1991_b6.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1991_b6_solution (a b : R) := IZR (floor (ln (a / b))). 
Theorem putnam_1991_b6 
    (a b: R)
    (hab : a > 0 /\ b > 0)
    (ineq_holds : R -> Prop := fun c => forall (u x: R), 0 < Rabs u <= c /\ 0 < x < 1 -> Rpower a x * Rpower b (1 - x) <= a * sinh (u * x) / sinh u + b * sinh (1 - x) / sinh u)
    (c: R)
    (hc : ineq_holds c)
    (hcub : forall (x: R), ineq_holds x -> x <= c)
    : c = putnam_1991_b6_solution a b.
Proof. Admitted.
End putnam_1991_b6.

Section putnam_1992_a1.
Require Import Basics.
Theorem putnam_1992_a1 
    (f : nat -> nat) 
    (hf : forall (n: nat), f (f n) = n /\ f (f (n + 2)) + 2 = n /\ f 0 = 1)
    : f = (fun n => 1 - n).
Proof. Admitted.
End putnam_1992_a1.

Section putnam_1992_a2.
Require Import Reals Binomial Factorial Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1992_a2_solution := 1992.
Theorem putnam_1992_a2
    (C : R -> R := fun a => (Derive_n (fun x => Rpower (1 + x) a) 1992) 0 / INR (fact 1992))
    : RInt (fun y => C( - y - 1 ) * (sum_n (fun k => 1 / (y + INR k)) 1992)) 0 1 = putnam_1992_a2_solution.
Proof. Admitted.
End putnam_1992_a2.

Section putnam_1992_a3.
Require Import Nat. From mathcomp Require Import div fintype perm ssrbool.
Definition putnam_1992_a3_solution (x y n m: nat) := exists r, x = 2 ^ r /\ y = 2 ^ r /\ n = 2 * r /\ m = 2 * r + 1.
Theorem putnam_1992_a3
    (m : nat)
    (hm : m > 0)
    (hnxy : nat -> nat -> nat -> Prop := fun n x y => n > 0 /\ x > 0 /\ y > 0 /\ coprime n m /\ pow (pow x 2 + pow y 2) m = pow (x * y) m)
    : forall n x y, putnam_1992_a3_solution x y n m.
Proof. Admitted.
End putnam_1992_a3.

Section putnam_1992_a4.
Require Import Nat Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1992_a4_solution (k: nat) := if odd k then 0 else pow (-1) (k/2).
Theorem putnam_1992_a4
    (f : R -> R := fun n => (pow (1 / n) 2) / ((pow (1 / n) 2) + 1))
    (df_0 : nat -> R := fun k => (Derive_n f k) 0)
    : forall (k: nat), gt k 0 -> df_0 k = putnam_1992_a4_solution k.
Proof. Admitted.
End putnam_1992_a4.

Section putnam_1992_a5.
Require Import BinPos Nat ZArith.
Definition putnam_1992_a5_solution := 1.
Theorem putnam_1992_a5
    (k := fix count_ones (n : positive) : nat :=
        match n with
        | xH => 1
        | xO n' => count_ones n'
        | xI n' => 1 + count_ones n'
    end)
    (a : positive -> nat := fun n => (k n) mod 2)
    : ~ exists (k m: nat), forall (j: nat), 0 <= j <= m - 1 -> a (Pos.of_nat (k + j)) = a (Pos.of_nat (k + m + j)) /\ a (Pos.of_nat (k + m + j)) = a (Pos.of_nat (k + 2 * m + j)).
Proof. Admitted.
End putnam_1992_a5.

Section putnam_1992_b1.
Require Import Nat Ensembles Finite_sets Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1992_b1_solution (n: nat) := sub (mul 2 n) 3.
Theorem putnam_1992_b1
    (n : nat) 
    (E : Ensemble R)
    (AE_criterion : Ensemble R -> Ensemble R -> Prop := fun E AE => cardinal R E n /\ forall (m: R), AE m <-> exists (p q: R), E p /\ E q /\ m = (p + q) / 2)
    : gt n 2 -> exists (minAE: nat), 
    (forall (AE: Ensemble R) (szAE: nat), cardinal R AE szAE /\ cardinal R AE minAE -> ge szAE minAE) <->
    minAE = putnam_1992_b1_solution n.
Proof. Admitted.
End putnam_1992_b1.

Section putnam_1992_b4.
From mathcomp Require Import ssrnat ssrnum ssralg poly polydiv seq.
Open Scope ring_scope.
Definition putnam_1992_b4_solution := 3984%nat.
Theorem putnam_1992_b4
    (R : numDomainType) 
    (p : {poly R})
    (cond : {poly R} -> {poly R} -> Prop := fun f g => derivn 1992 (p %/ ('X^3 - 'X)) = f %/ g)
    : gt (size p) 1992 /\ exists c: R, gcdp_rec p ('X^3 - 'X) = polyC c ->
    exists mindeg, ((forall (f g: {poly R}), cond f g /\ ge (size f) mindeg) /\ 
    (exists (f g: {poly R}), cond f g /\ size f = mindeg)) <->
    mindeg = putnam_1992_b4_solution.
Proof. Admitted.
End putnam_1992_b4.

Section putnam_1993_a2.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1993_a2 
    (x : nat -> R)
    (n : nat)
    (hn : gt n 0)
    : pow (x n) 2 - x (pred n) * x (S n) = 1 ->
    exists (a: R), ge n 1 -> x (S n) = a * x n - x (pred n).
Proof. Admitted.
End putnam_1993_a2.

Section putnam_1993_a4.
Require Import List Bool Reals Peano_dec Coquelicot.Coquelicot.
Open Scope nat_scope.
Theorem putnam_1993_a4 
    (x y: list nat)
    (hx : length x = 19)
    (hy : length y = 93)
    (hx2 : forall n : nat, In n x -> 1 < n <= 93)
    (hy2 : forall n  : nat, In n y -> 1 < n <= 19)
    : exists (presentx presenty : nat -> bool), 
    sum_n (fun n => 
        if ((existsb (fun i => if eq_nat_dec n i then true else false) x) && presentx n) 
        then (INR n) else R0) 94 = 
    sum_n (fun n => 
        if ((existsb (fun i => if eq_nat_dec n i then true else false) y) && presenty n) 
        then (INR n) else R0) 20. 
Proof. Admitted.
End putnam_1993_a4.

Section putnam_1993_a5.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1993_a5 
    (f : R -> R := fun x => (pow x 2 - x) / (pow x 3 - 3 * x + 1))
    : exists p q : Z,
    RInt (fun x => pow (f x) 2)  (-100) (-10) +
    RInt (fun x => pow (f x) 2) (1/101) (1/11) +
    RInt (fun x => pow (f x) 2) (101/100) (11/10) =
    IZR p /IZR q.
Proof. Admitted.
End putnam_1993_a5.

Section putnam_1993_b1.
Require Import Reals.
Open Scope R.
Definition putnam_1993_b1_solution : nat := 3987.
Theorem putnam_1993_b1
    (cond : nat -> Prop := fun n => forall (m: nat), and (lt 0 m) (lt m 1993) -> exists (k: nat), INR m / 1993 < INR k / INR n < INR (m + 1) / 1994)
    : exists (mn : nat), cond mn /\ forall (n: nat), cond n -> ge n mn <->
    mn = putnam_1993_b1_solution.
Proof. Admitted.
End putnam_1993_b1.

Section putnam_1993_b4.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1993_b4 
    (K: (R * R) -> R) 
    (f g: R -> R)
    (hK : forall (xy : R * R), let (x, y) := xy in 0 <= x <= 1 /\ 0 <= y <= 1 /\ K xy > 0 /\ continuous K xy)
    (hfg : forall (x: R), 0 <= x <= 1 /\ f x > 0 /\ g x > 0 /\ continuity f /\ continuity g ->
        forall (x: R), 0 <= x <= 1 -> 
        (RInt (fun y => f y * K (x, y)) 0 1) = g x /\
        RInt (fun y => g y * K (x, y)) 0 1 = f x)
    : forall (x: R), 0 <= x <= 1 -> f x = g x.
Proof. Admitted.
End putnam_1993_b4.

Section putnam_1994_a1.
Require Import Nat Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1994_a1
    : exists (a: nat -> R), forall (n: nat), gt n 0 -> 0 < a n <= a (mul 2 n) + a (add (mul 2 n) 1) ->
    ~ ex_lim_seq (fun n => sum_n (fun m => a m) n).
Proof. Admitted.
End putnam_1994_a1.

Section putnam_1994_b1.
Require Import Ensembles Finite_sets ZArith.
Open Scope Z.
Definition putnam_1994_b1_solution (n: Z) := 315 <= n <= 325 \/ 332 <= n <= 350.
Theorem putnam_1994_b1
    : forall (n: Z), exists (E: Ensemble Z), cardinal Z E 15 -> 
    forall (m: Z), E m -> Z.abs (m * m - n) <= 250 ->
    putnam_1994_b1_solution n.
Proof. Admitted.
End putnam_1994_b1.