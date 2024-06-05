(* NOTE -- Two external functions have been defined for usage in both solution and problem statement. *)
Section putnam_2014_b1.
Require Import Nat Ensembles List. From mathcomp Require Import div fintype seq ssrbool.
Fixpoint hd (n: nat) (l:list 'I_n) := match l with | nil => 0 | x :: _ => x end.
Fixpoint expandl (n: nat) (l : list 'I_n) : nat := match l with | nil => 0 | h :: t => (nat_of_ord h) * 10 ^ (length l - 1) + (expandl n t) end.
Definition putnam_2014_b1_solution : Ensemble nat := fun n => n > 0 /\ exists l : list 'I_10, 0 <> hd 10 l /\ In ord0 l /\ expandl 10 l = n.
Theorem putnam_2014_b1
    (n := 11)
    (overexpansion : nat -> list 'I_n -> Prop := fun N l => N = expandl 11 l)
    (A : Ensemble nat)
    (hA : forall N : nat, A N <-> N > 0 /\ exists! (l: list 'I_n), overexpansion N l)
    : (A = putnam_2014_b1_solution).
Proof. Admitted.
End putnam_2014_b1.

Section putnam_2016_a2.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2016_a2_solution := (3 + sqrt 5) / 2.
Theorem putnam_2016_a2
    (p : nat -> nat -> Prop := fun n m => Binomial.C m (n - 1) > Binomial.C (m - 1) n)
    (M : nat -> nat)
    (pM : forall n : nat, p n (M n))
    (hMub : forall n m : nat, p n m -> le m (M n)) 
    : Lim_seq (fun n => (INR (M n) / INR n)) = putnam_2016_a2_solution.
Proof. Admitted.
End putnam_2016_a2.

Section putnam_2016_a6.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2016_a6_solution := 5 / 6.
Theorem putnam_2016_a6
    (C : R)
    (max : (R -> R) -> R)
    (hmax : forall (P : R -> R) (coeff: nat -> R) (n: nat), 
        (coeff n <> 0 /\ P = (fun x => sum_n (fun i => coeff i * x ^ i) (n + 1))) -> 
        exists (x: R), 0 <= x <= 1 /\ Rabs (P x) = max P)
    (hmaxub : forall (P : R -> R) (coeff: nat -> R) (n: nat), 
        (coeff n <> 0 /\ P = (fun x => sum_n (fun i => coeff i * x ^ i) (n + 1))) -> 
        forall (x: R), 0 <= x <= 1 /\ Rabs (P x) <= max P)
    (p : R -> Prop := 
        fun c => 
        forall (P : R -> R) (coeff: nat -> R),
        (coeff 3%nat <> R0 /\ P = (fun x => sum_n (fun i => coeff i * x ^ i) 4)) -> 
        (exists (x: R), 0 <= x <= 1 /\ P x = 0) -> RInt P 0 1 <= c * max P)
    (hpC : p C)
    (hClb : forall c : R, p c -> C <= c)
    : (C = putnam_2016_a6_solution).
Proof. Admitted.
End putnam_2016_a6.

Section putnam_2016_b1.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2016_b1_solution := 1.
Theorem putnam_2016_b1
    (x : nat -> R := fix x (n: nat) :=
        match n with
        | O => 1
        | S n' => ln (exp (x n') - x n')
    end)
    : Series x = putnam_2016_b1_solution.
Proof. Admitted.
End putnam_2016_b1.

Section putnam_2017_a4.
Require Import Nat Ensembles List Finite_sets Reals Coquelicot.Coquelicot. From mathcomp Require Import div fintype seq ssrbool.
Theorem putnam_2017_a4 
    (N : nat)
    (M : nat := mul 2 N)
    (score : nat -> 'I_11)
    (hsurj : forall (k: 'I_11), exists (i : 'I_M), score i = k)
    (havg : (sum_n (fun i => INR (nat_of_ord (score i))) M) / INR M = 7.4)
    (E_bool : nat -> bool)
    : 
    exists (presS: nat -> Prop) (E: Ensemble nat), cardinal nat E N /\ 
    forall (n: nat), E n <-> (presS n /\ and (le 0 n) (le n 10)) /\
    (forall i, E_bool i = true <-> E i) /\
    (sum_n (fun i => if (E_bool i) then INR (nat_of_ord (score i)) else 0) N) / INR N = 7.4 /\
    (sum_n (fun i => if E_bool i then 0 else INR (nat_of_ord (score i))) N) / INR N = 7.4.
Proof. Admitted.
End putnam_2017_a4.

Section putnam_2017_b2.
Require Import Nat ZArith Coquelicot.Coquelicot.
Definition putnam_2017_b2_solution := 16.
Theorem putnam_2017_b2
    (mina : nat)
    (posMin : mina > 0)
    (A : nat -> nat -> nat := fun a k => Z.to_nat (floor (sum_n (fun i => Raxioms.INR (a + (i + 1))) k)))
    (p : nat -> nat -> Prop := fun N k => exists (a: nat), a > 0 /\ A a k = N) 
    (q : nat -> Prop := fun N => p N 2017 /\ forall (k: nat), k > 1 -> k <> 2017 -> ~ p N k)
    (hmina : q (A mina 2017)) 
    (hminalb : (forall (a: nat), a > 0 /\ q (A a 2017) -> mina <= a))
    : mina = putnam_2017_b2_solution.
Proof. Admitted.
End putnam_2017_b2.

Section putnam_2017_b4.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2017_b4_solution := (ln 2 / ln 10) ^ 2.
Theorem putnam_2017_b4
    : Lim_seq (fun n => sum_n (fun k => let k := INR k in (3 * ln (4 * k + 2) / (4 * k + 2) - ln (4 * k + 3) / (4 * k + 3) - ln (4 * k + 4) / (4 * k + 4) - ln (4 * k + 5) / (4 * k + 5))) n) = putnam_2017_b4_solution .
Proof. Admitted.
End putnam_2017_b4.

Section putnam_2019_a1.
Require Import ZArith Ensembles Coquelicot.Coquelicot.
Open Scope Z.
Definition putnam_2019_a1_solution : Ensemble Z := fun n => Z.ge n 0 /\ n mod 9 <> 3 /\ n mod 9 <> 6.
Theorem putnam_2019_a1 
    (A : Ensemble Z)
    (hA : forall (n: Z), A n <-> exists (A B C: Z), A >= 0 /\ B >= 0 /\ C >= 0 /\ A ^ 3 + B ^ 3 + C ^ 3 - 3 * A * B * C = n)
    : A = putnam_2019_a1_solution.
Proof. Admitted.
End putnam_2019_a1.

Section putnam_2019_a6.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2019_a6_solution := 1.
Theorem putnam_2019_a6 
    (g : R -> R)
    (contg : forall (x: R), 0 <= x <= 1 -> continuity_pt g x)
    (diff2g : forall (x: R), 0 < x < 1 -> ex_derive_n g 2 x)
    (r : R)
    (posr : r > 1)
    (p : filterlim (fun x => (g x / Rpower x r)) (at_right 0) (locally 0))
    : 
    (filterlim (Derive g) (at_right 0) (locally 0)) \/
    ~ exists (c: R), is_LimSup_seq (fun x => if Rlt_dec (INR x) 0 then 0 else Rpower (INR x) r * Rabs (Derive_n g 2 (INR x))) c.
Proof. Admitted.
End putnam_2019_a6. 

Section putnam_2019_b2.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2019_b2_solution := 8 / PI ^ 3.
Theorem putnam_2019_b2 
    (a : nat -> R := fun n => sum_n (fun k => let k := INR k in let n := INR n in (sin (2 * (k + 1) * PI / (2 * n))) / ((cos ((k - 1) * PI / (2 * n))) ^ 2 * (cos ((k * PI) / (2 * n))) ^ 2)) (n - 1))
    : Lim_seq (fun n => a n / INR n ^ 3) = putnam_2019_b2_solution.
Proof. Admitted.
End putnam_2019_b2.

Section putnam_2020_a2.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2020_a2_solution := fun k => 4 ^ k.
Theorem putnam_2020_a2  
    : (fun k => sum_n (fun j => 2 ^ (k - j) * Binomial.C (k + j) j) (k + 1)) = putnam_2020_a2_solution.
Proof. Admitted.
End putnam_2020_a2.

Section putnam_2020_a3.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2020_a3_solution := False.
Theorem putnam_2020_a3 
    (a : nat -> R := fix a (n: nat) := 
        match n with
        | O => PI / 2
        | S n' => sin (a n')
    end)
    : ex_lim_seq (fun n => (a n) ^ 2) <-> putnam_2020_a3_solution.
Proof. Admitted.
End putnam_2020_a3.

Section putnam_2020_a6.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2020_a6_solution := PI / 4.
Theorem putnam_2020_a6 
    (f : Z -> (R -> R) := fun Nz : Z => fun x : R =>
        sum_n (fun n => let N := IZR Nz in let n := INR n in (N + 1 / 2 - n) / ((N + 1) * (2 * n + 1)) * sin ((2 * n + 1) * x)) (Z.to_nat Nz + 1))
    (M : R)
    (hM : forall (N: Z), Z.gt N 0 -> forall (x: R), f N x <= M)
    (hMlb : forall (n: R), (forall (N: Z), Z.gt N 0 -> forall (x: R), f N x <= n) -> n >= M)
    : M = putnam_2020_a6_solution.
Proof. Admitted.
End putnam_2020_a6.

Section putnam_2020_b1.
Require Import ZArith Reals Coquelicot.Coquelicot.
Open Scope Z.
Definition putnam_2020_b1_solution := 1990.
Theorem putnam_2020_b1 
    (d : positive -> Z := fix d (n : positive) :=
        match n with
        | xH => 1
        | xO n' => d n'%positive
        | xI n' => 1 + d n'%positive
    end)
    (A := sum_n (fun k => IZR ((-1) ^ (d (Pos.of_nat (S k))) * (Z.of_nat k) ^ 3)) 2020)
    : (floor A) mod 2020 = putnam_2020_b1_solution.
Proof. Admitted.
End putnam_2020_b1.

Section putnam_2021_a4.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2021_a4_solution := (sqrt 2 / 2) * PI * ln 2 / ln 10.
Theorem putnam_2021_a4 
    (I : nat -> R := fun r => RInt (fun x => RInt (fun y => (1 + 2 * x ^ 2) / (1 + x ^ 4 + 6 * x ^ 2 * y ^ 2 + y ^ 4) - (1 + y ^ 2) / (2  + x ^ 4 + y ^ 4)) 0 (sqrt (INR r ^ 2 - x ^ 2))) 0 1)
    : ~ ex_lim_seq I \/ Lim_seq I = putnam_2021_a4_solution.
Proof. Admitted.
End putnam_2021_a4.

Section putnam_2022_a1.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2022_a1_solution (a b: R) := (a = 0 /\ b = 0) \/ (Rabs a >= 1) \/ (Rabs a < 1 /\ (b < ln (1 - (1 - sqrt (1 - a ^ 2)) / a) ^ 2 - Rabs a * (1 - (1 - sqrt (1 - a ^ 2)) / a) \/ b > ln (1 - (1 + sqrt (1 - a ^ 2) / a) ^ 2 - Rabs a * (1 + sqrt (1 - a ^ 2) / a)))).
Theorem putnam_2022_a1 
    : forall a b : R, (exists! (x: R), a * x + b = ln (1 + x ^ 2) / ln 10) <-> putnam_2022_a1_solution a b. 
Proof. Admitted.
End putnam_2022_a1.

Section putnam_2022_a2.
Require Import Basics Nat Reals Coquelicot.Coquelicot.
Definition putnam_2022_a2_solution : nat -> nat := fun n => sub (mul 2 n) 2.
Theorem putnam_2022_a2 
    (n : nat)
    (hn : ge n 2)
    (num_neg_coeff : nat -> (nat -> R) -> nat := fun n coeff => Z.to_nat (floor (sum_n (fun i => if Rlt_dec (coeff i) 0 then 1 else 0) (n + 1))))
    : forall (P : R -> R) (coeff1 coeff2: nat -> R) (n: nat), 
    (((coeff1 n <> 0 /\ P = (fun x => sum_n (fun i => coeff1 i * x ^ i) (n + 1))) /\ compose P P = (fun x => sum_n (fun i => coeff2 i * x ^ i) (n + 1))) -> 
    ge (num_neg_coeff n coeff2) (putnam_2022_a2_solution n)) /\
    (exists (P : R -> R) (coeff1 coeff2: nat -> R) (n: nat), 
    ((coeff1 n <> 0 /\ P = (fun x => sum_n (fun i => coeff1 i * x ^ i) (n + 1))) /\ compose P P = (fun x => sum_n (fun i => coeff2 i * x ^ i) (n + 1))) -> 
    num_neg_coeff n coeff2 = putnam_2022_a2_solution n).
Proof. Admitted.
End putnam_2022_a2.

Section putnam_2014_a4.
From mathcomp.analysis Require Import probability.
From mathcomp Require Import all_ssreflect.
From mathcomp Require Import ssralg poly ssrnum ssrint interval finmap.
From mathcomp Require Import mathcomp_extra boolp classical_sets functions.
From mathcomp Require Import cardinality fsbigop.
From HB Require Import structures.
From mathcomp.analysis Require Import exp numfun lebesgue_measure lebesgue_integral.
From mathcomp.analysis Require Import reals ereal signed topology normedtype sequences esum measure.
From mathcomp.analysis Require Import exp numfun lebesgue_measure lebesgue_integral kernel.
Context d (T : measurableType d) (R : realType) (P : probability T R).
Definition putnam_2014_a4_solution : R := 1 / 3.
Local Open Scope ring_scope.
Theorem putnam_2014_a4
    (X : {RV P >-> R})
    (ed := @expectation _ _ _ P X = 1%:E)
    (ed2 := @expectation _ _ _ P (X * X) = 2%:E)
    (ed3 := @expectation _ _ _ P (X * X * X) = 5%:E)
    (minval : R)
    (de := distribution P X)
    : forall (P : probability T R), (minval <= (pmf X 0) /\ exists (P : probability T R), minval = (pmf X 0)) <-> minval = putnam_2014_a4_solution.
Proof. Admitted.
End putnam_2014_a4.

Section putnam_2023_a2.
Require Import Nat Ensembles Factorial Reals Coquelicot.Coquelicot.
Definition putnam_2023_a2_solution : Ensemble R := fun x => exists (n: nat), x = -1 / INR (fact n) \/ x = 1 / INR (fact n).
Theorem putnam_2023_a2 
    (n : nat)
    (hn0 : gt n 0)
    (hnev : even n = true)
    (coeff: nat -> R)
    (p : R -> R := fun x => sum_n (fun i => coeff i * x ^ i) (2 * n + 1))
    (monic_even : coeff (mul 2 n) = 1)
    (hpinv : forall k : Z, and (Z.le 1 (Z.abs k)) (Z.le (Z.abs k) (Z.of_nat n)) -> p (1 / (IZR k)) = IZR (k ^ 2))
    : (fun x => (p (1 / x) = x ^ 2 /\ ~ exists k : Z, x = IZR k /\ Z.le (Z.abs k) (Z.of_nat n))) = putnam_2023_a2_solution.
Proof. Admitted.
End putnam_2023_a2.

Section putnam_2023_a3.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2023_a3_solution := PI / 2.
Theorem putnam_2023_a3 
    (r : R)
    (hr : r > 0)
    (p : R -> Prop := fun t => exists (f g : R -> R), f 0 = 0 /\ g 0 = 0 /\ forall (x: R), Rabs (Derive f x) <= Rabs (g x) /\ forall (x: R), Rabs (Derive g x) <= Rabs (f x) /\ f t = 0)
    : (forall (t: R), t > 0 -> t < r -> ~ (p t)) <-> r = putnam_2023_a3_solution.
Proof. Admitted.
End putnam_2023_a3.