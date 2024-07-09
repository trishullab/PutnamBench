Section putnam_2023_b2. 
Require Import BinNums Nat NArith.
Definition putnam_2023_b2_solution := 3.
Theorem putnam_2023_b2
    (k:= fix count_ones (n : positive) : nat :=
        match n with
        | xH => 1
        | xO n' => count_ones n'
        | xI n' => 1 + count_ones n'
    end)
    : (forall (n: nat), k (Pos.of_nat (2023*n)) >= putnam_2023_b2_solution) /\
    (exists (n: nat), k (Pos.of_nat (2023*n)) = putnam_2023_b2_solution).
Proof. Admitted.
End putnam_2023_b2.

Section putnam_1974_a3. 
Require Import Nat ZArith Znumtheory. 
Definition putnam_1974_a3_solution := (fun x => x mod 8 = 1, fun x => x mod 8 = 5).
Theorem putnam_1974_a3
    (ha : nat -> Prop := fun p => exists (m n: Z), (Z.of_nat p) = m*m + 16*n*n)
    (hb : nat -> Prop := fun p => exists (m n: Z), (Z.of_nat p) = 4*m*m + 4*m*n + 5*n*n)
    : forall (p: nat), prime (Z.of_nat p) /\ odd p = true -> 
    ((ha p <-> fst (putnam_1974_a3_solution) (Z.of_nat p)) /\ 
    (hb p <-> snd (putnam_1974_a3_solution) (Z.of_nat p))).
Proof. Admitted.
End putnam_1974_a3.

Section putnam_1975_a1. 
Theorem putnam_1975_a1
    (a : nat -> nat -> nat -> Prop := fun m p q => 4*m + 1 = p*p + q*q)
    (b : nat -> nat -> nat -> Prop := fun m p q => m = Nat.div (p * (p+1)) 2 + Nat.div (q * (q+1)) 2)
    : forall (m: nat), (exists p q: nat, a m p q) <-> (exists p q: nat, b m p q).
Proof. Admitted.
End putnam_1975_a1.

Section putnam_1975_a5. 
Require Import Basics Factorial Reals Coquelicot.Series.
Open Scope R.
Theorem putnam_1975_a5 
    (f0 : R -> R := fun x => Rpower (exp 1) x)
    (composen := fix compose_n {A: Type} (f : A -> A) (n : nat) :=
        match n with
        | O => fun x => x
        | S n' => compose f (compose_n f n')
    end)
    : Series (fun n => ((composen f0 n) 1)/(INR (fact n))) = Rpower (exp 1) (exp 1).
Proof. Admitted.
End putnam_1975_a5.

Section putnam_1976_a3. 
Require Import Nat ZArith Znumtheory. 
Open Scope nat_scope. 
Definition putnam_1976_a3_solution (p q n m: nat) := p = 2 /\ q = 3 /\ n = 3 /\ m = 2.
Theorem putnam_1976_a3
    (eq : nat -> nat -> nat -> nat -> Prop := fun p q n m => p^n = q^m + 1 \/ p^n = q^m -1)
    : forall (p q n m: nat), 
    (prime (Z.of_nat p) /\ prime (Z.of_nat q) /\ n >= 2 /\ m >= 2 /\ eq p q n m)
    <-> putnam_1976_a3_solution p q n m.
Proof. Admitted.
End putnam_1976_a3.

Section putnam_1976_a6. 
Require Import Reals Coquelicot.Derive.
Theorem putnam_1976_a6
    (f: R -> R) 
    (hf : R  -> Prop := fun x => -1 <= x <= 1 -> ex_derive_n f 2 x /\ (f 0)*(f 0) + ((Derive_n f 1) 0)*((Derive_n f 1) 0) = 4 )
    : exists (a: R), f a + ((Derive_n f 2) a) = 0.
Proof. Admitted.
End putnam_1976_a6.

Section putnam_1976_b6. 
Require Import List Nat.
Theorem putnam_1976_b6
    (sigma : nat -> nat := fun n => fold_right plus 0 (filter (fun m => Nat.eqb (n mod m) 0) (seq 1 (S n))))
    : forall (n: nat), sigma n = 2*n + 1 -> exists (m: nat), (odd m = true )/\ n = m*m. 
Proof. Admitted.
End putnam_1976_b6.

Section putnam_1977_a2.
Require Import Reals.
Open Scope R.
Definition putnam_1977_a2_solution (a b c d: R) := c = -a /\ d = b.
Theorem putnam_1977_a2
    (p : R -> R -> R -> R -> Prop := fun a b c d => a + b + c = d /\ 1/a + 1/b + 1/c = 1/d)
    : forall (a b c d: R), p a b c d <-> putnam_1977_a2_solution a b c d.
Proof. Admitted.
End putnam_1977_a2.

Section putnam_1977_a5.
Require Import Binomial Reals Znumtheory Coquelicot.Coquelicot.
Open Scope nat_scope.
Theorem putnam_1977_a5 
    (p n m : nat)
    (hp : prime (Z.of_nat p))
    (hmn : m >= n)
    : (Z.to_nat (floor (Binomial.C (p*m) (p*n)))) = (Z.to_nat (floor (Binomial.C m n))) mod p.
Proof. Admitted.
End putnam_1977_a5.

Section putnam_1977_b1.
Require Import Reals Coquelicot.Series.
Open Scope R.
Definition putnam_1977_b1_solution := 2/3.
Theorem putnam_1977_b1
    : Series (fun n => if (Rle_dec (INR n) 1) then 0 else (pow (INR n) 3 - 1)/ (pow (INR n) 3 + 1)) = putnam_1977_b1_solution.
Proof. Admitted.
End putnam_1977_b1.

Section putnam_1977_b5.
Require Import List Reals.
Open Scope R.
Theorem putnam_1977_b5 
    (n : nat) 
    (a : list R) 
    (b : R)
    (ha : length a = n)
    (sum1 := fold_left Rplus a 0)
    (sum2 := fold_left (fun acc x => Rplus acc (x*x)) a 0)
    : forall (b: R), b < sum1*sum1/(INR n-1) - sum2 ->
    forall (i j: nat), R1 <= INR i <= INR n /\ 1 <= INR j <= INR n /\ i <> j -> b < 2 * (nth i a 0) * (nth j a 0).
Proof. Admitted.
End putnam_1977_b5.

Section putnam_1978_a1.
Require Import Nat Ensembles Finite_sets.
Theorem putnam_1978_a1
    (A : Ensemble nat := fun n => 1 <= n <= 100 /\ n mod 3 = 1)
    (B : Ensemble nat)
    (hB : cardinal nat B 20)
    (hsubB : forall n, B n -> A n) 
    (n: nat)
    : exists (b1 b2: nat), B b1 /\ B b2 /\ b1 <> b2 -> b1 + b2 = 104.
Proof. Admitted.
End putnam_1978_a1.

Section putnam_1978_a5.
Require Import List Reals Coquelicot.Coquelicot.
Theorem putnam_1978_a5
    (mu : (nat -> R) -> nat -> R := fun a : nat -> R => fun n : nat => (sum_n a n)/(INR n))
    (wrapper_a : (nat -> R) -> nat -> R := fun a i => sin (a i) / (a i))
    : forall (a: nat -> R) (n i: nat), 0 <= INR i < INR n /\ 0 < a i < PI ->
    fold_right Rmult 1%R (map (wrapper_a a) (List.seq 0 n)) <= ((sin (mu a n))/(mu a n))^n.
Proof. Admitted.
End putnam_1978_a5.

Section putnam_1978_b2.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1978_b2_solution := 7/4. 
Theorem putnam_1978_b2
    : Series (fun i => Series (fun j => 1/(INR i*INR i*INR j + 2*INR i*INR j + INR i*INR j*INR j))) = putnam_1978_b2_solution.    
Proof. Admitted.
End putnam_1978_b2.

Section putnam_1978_b4.
Require Import Reals.
Open Scope R.
Theorem putnam_1978_b4 
    : forall (n: R), exists (a b c d: Z), IZR a > n /\ IZR b > n /\ IZR c > n /\ IZR d > n /\ IZR a * IZR a + IZR b * IZR b + IZR c * IZR c + IZR d * IZR d = IZR a * IZR b * IZR c + IZR a * IZR b * IZR d + IZR a * IZR c * IZR d + IZR b * IZR c * IZR d.
Proof. Admitted.
End putnam_1978_b4.

Section putnam_1978_b6.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1978_b6 
    (a : nat -> nat -> R)
    (n m: nat)
    : forall i j: nat, 0 <= a i j <= 1 ->
    pow (sum_n (fun i => sum_n (fun j => (a i j)/INR i) m * INR i) n) 2 <= 2 * INR m * sum_n (fun i => sum_n (fun j => a i j) m*INR i) n.
Proof. Admitted.
End putnam_1978_b6.

Section putnam_1979_a1.
Require Import Nat List.
Definition putnam_1979_a1_solution := 2 :: repeat 3 659.
Theorem putnam_1979_a1
    (l : list nat)
    (hl : fold_left add l 0 = 1979)
    (hlmax : forall m: list nat, fold_left add m 0 = 1979 /\ fold_left mul l 1 >= fold_left mul m 1)
    : l = putnam_1979_a1_solution. 
Proof. Admitted.
End putnam_1979_a1.

Section putnam_1979_a2.
Require Import Basics Reals Coquelicot.Coquelicot.
Definition putnam_1979_a2_solution (k : R) := k >= 0. 
Theorem putnam_1979_a2
    : forall (k: R), (exists (f: R -> R), continuity f /\ forall x, (compose f f) x = k * pow x 9)
    <-> putnam_1979_a2_solution k.
Proof. Admitted.
End putnam_1979_a2.

Section putnam_1979_a3.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1979_a3_solution (x y: R) := x = IZR (floor x) /\ y = IZR (floor y).
Theorem putnam_1979_a3
    (A := fix a (x y: R) (n: nat) := 
        match n with
        | O => x
        | S O => y
        | S ((S n'') as n') => (a x y n'' * a x y n') / (2 * a x y n'' - a x y n')
    end)
    : forall (n: nat), exists (x y: R), (A x y n+1 <> 2 * A x y n) /\ 
    (~ exists (r: R), A x y n = IZR (floor (A x y n)) /\ INR n < r)
    <-> putnam_1979_a3_solution x y.
Proof. Admitted.
End putnam_1979_a3.

Section putnam_1979_a5.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1979_a5 
    (f : R -> R := fun x => Rpower x 3 - 10 * pow x 2 + 29 * x - 25)
    : exists (r1 r2: R), r1 <> r2 /\ f r1 = 0 /\ f r2 = 0 /\
    ~ exists (r: R), forall (n: nat), exists (p q: Z), n = Z.to_nat (floor (IZR p * r1)) /\ n = Z.to_nat (floor (IZR q * r2)) /\ INR n < r. 
Proof. Admitted.
End putnam_1979_a5.

Section putnam_1979_a6.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1979_a6 
    (a: nat -> R)
    : forall n: nat, 0 <= a n <= 1 ->
    exists (b: R), 0 <= b <= 1 ->
    sum_n (fun n => 1/(b - a n)) n <= 8 * INR n * sum_n (fun i => 1/(2*(INR i+1) - 1)) n.
Proof. Admitted.
End putnam_1979_a6.

Section putnam_1979_b2.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1979_b2_solution (a b: R):= (Rpower b (b/(b-a))) / ((exp 1) * Rpower a (a/(b-a))).
Theorem putnam_1979_b2
    (a b: R)
    (hab : 0 < a < b)
    : Lim_seq (fun lam => Rpower (RInt (fun x => Rpower (b*x + a*(1-x)) (INR lam)) 0 1) 1/INR lam) 
    = putnam_1979_b2_solution a b.
Proof. Admitted.
End putnam_1979_b2.

Section putnam_1979_b6.
Require Import Reals List Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1979_b6
    (n: nat) 
    (l: list C)
    (hl : length l = n)
    (sum1 := fold_left (fun acc x => Cplus acc (Cmult x x)) l 0)
    (sum2 := fold_left (fun acc x => Re x) l 0)
    : sqrt (Re sum1) <= sum2.
Proof. Admitted.
End putnam_1979_b6.

Section putnam_1980_a2.
Require Import Nat Ensembles Finite_sets.
Definition putnam_1980_a2_solution (m n: nat) := (6*m*m + 3*m + 1) * (6*n*n + 3*n + 1).
Theorem putnam_1980_a2
    (gcd3 : nat -> nat -> nat -> nat := fun a b c => gcd (gcd a b) c)
    (f: Ensemble (nat*nat))
    : forall (m n: nat) (a b c d: nat), 
    (f (m, n) <-> gcd3 a b c = 3 ^ m * 7 ^ n \/ gcd3 a b d = 3 ^ m * 7 ^ n \/ gcd3 a c d = 3 ^ m * 7 ^ n \/ gcd3 b c d = 3 ^ m * 7 ^ n) -> cardinal (nat*nat) f (putnam_1980_a2_solution m n).
Proof. Admitted.
End putnam_1980_a2.

Section putnam_1980_a3.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1980_a3_solution := PI/4.
Theorem putnam_1980_a3
    (f : R -> R := fun x => 1/(1 + Rpower (tan x) (sqrt 2)))
    : RInt f 0 PI/2 = putnam_1980_a3_solution.
Proof. Admitted.
End putnam_1980_a3.

Section putnam_1980_a4.
Require Import Reals BinInt.
Open Scope Z.
Theorem putnam_1980_a4
    : (forall (a b c: Z), (~ (a = 0 \/ b = 0 /\ c = 0) /\ Z.abs a < 10^6 /\ Z.abs b < 10^6 /\ Z.abs c < 10^6) ->
    Rgt (Rabs (Rplus (Rplus (IZR a) (Rmult (IZR b) (sqrt 2))) (Rmult (IZR c) (sqrt 3)))) (Rpower 10 (-21)) )
    /\ (exists (a b c: Z), 
    Rlt (Rabs (Rplus (IZR a) (Rplus (Rmult (IZR b) (sqrt 2)) (Rmult (IZR c) (sqrt 3))))) (Rpower 10 (-11)) ).    
Proof. Admitted.
End putnam_1980_a4.

Section putnam_1980_b1.
Require Import Reals Rtrigo_def.
Open Scope R.
Definition putnam_1980_b1_solution (k: R) := k >= 1/2.
Theorem putnam_1980_b1
    : forall (k: R), forall (x: R), cosh x <= exp (k*x*x) <-> putnam_1980_b1_solution k.
Proof. Admitted.
End putnam_1980_b1.

Section putnam_1980_b3.
Require Import Reals.
Open Scope R.
Definition putnam_1980_b3_solution (b: R) := b >= 3.
Theorem putnam_1980_b3
    (b: R)
    (A := fix a (n: nat) : R :=
        match n with
        | O => b
        | S n' => 2 * a n' - INR (n' * n') 
    end)
    : forall (n: nat), A n > 0 <-> putnam_1980_b3_solution b.
Proof. Admitted.
End putnam_1980_b3.

Section putnam_1980_b6.
Require Import Reals Nat Znumtheory QArith Coquelicot.Coquelicot. From mathcomp Require Import div.
Theorem putnam_1980_b6
    (A := fix f (n i: nat) :=
        match (n,i) with
        | (O,i') => 1/INR i'
        | (S n', i') => (INR n' + 1)/(INR i') * sum_n (fun x => f n' (Nat.add n' x)) (Nat.sub i' n')
    end)
    : forall (n p: nat), and (gt p n) (gt n 1) /\ prime (Z.of_nat p) -> exists (a b: nat), A n p = INR a/INR b /\ p %| b/(gcd a b) = false.
Proof. Admitted.
End putnam_1980_b6.

Section putnam_1981_a3.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1981_a3_solution := 14.
Theorem putnam_1981_a3
    : Lim_seq (fun k => exp (-1*INR k) * (RInt (fun x => (RInt (fun y => (exp x - exp y) / (x - y)) 0 (INR k))) 0 (INR k))) = putnam_1981_a3_solution.
Proof. Admitted.
End putnam_1981_a3.

Section putnam_1981_b1.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1981_b1_solution := -1.
Theorem putnam_1981_b1
    : Lim_seq (fun n => 1/(pow (INR n) 5) * (sum_n (fun r => (sum_n (fun s => 5 * pow (INR r) 4 - 18  * pow (INR r) 2 * pow (INR s) 2 + 5 * pow (INR s) 4) n)) n)) = putnam_1981_b1_solution.
Proof. Admitted.
End putnam_1981_b1.

Section putnam_1981_b2.
Require Import Reals.
Open Scope R.
Definition putnam_1981_b2_solution := 12 - 8 * sqrt 2.
Theorem putnam_1981_b2
    (f : R -> R -> R -> R := fun a b c => pow (a-1) 2 + pow (b / a - 1) 2 + pow (c / b - 1) 2 + pow (4 / c - 1) 2)
    : (forall (a b c: R), 1 <= a /\ a <= b /\ b <= c /\ c <= 4 -> putnam_1981_b2_solution <= f a b c) /\
    (exists (a b c: R), 1 <= a /\ a <= b /\ b <= c /\ c <= 4 -> putnam_1981_b2_solution  = f a b c).
Proof. Admitted.
End putnam_1981_b2.

Section putnam_1981_b3.
Require Import Nat ZArith Znumtheory. From mathcomp Require Import div.
Open Scope nat_scope.
Theorem putnam_1981_b3
    : ~ exists (N: nat),
    forall (n: nat), 
    (forall (p: nat), prime (Z.of_nat p) /\ p %| pow n 2 + 3 = true -> exists (m: nat), p %| pow m 2 + 3 = true /\ pow m 2 < n) ->
    n < N.
Proof. Admitted.
End putnam_1981_b3.

Section putnam_1981_b5.
Require Import BinNums Nat NArith Coquelicot.Coquelicot.
Definition putnam_1981_b5_solution := True.
Theorem putnam_1981_b5
    (f := fix count_ones (n : positive) : nat :=
        match n with
        | xH => 1
        | xO n' => count_ones n'
        | xI n' => 1 + count_ones n'
    end)
    (k := Series (fun n => Rdefinitions.Rdiv (Raxioms.INR (f (Pos.of_nat n))) (Raxioms.INR (n + pow n 2))))
    : exists (a b: nat), Rtrigo_def.exp k = Rdefinitions.Rdiv (Raxioms.INR a) (Raxioms.INR b) <-> putnam_1981_b5_solution.
Proof. Admitted.
End putnam_1981_b5.

Section putnam_1982_a2.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1982_a2_solution := True.
Theorem putnam_1982_a2
    (B : nat -> R -> R := fun n x => sum_n (fun m => Rpower (INR m) x) n)
    (f : nat -> R := fun n => B n (ln 2 / ln (INR n)) / (INR n) * Rpower (ln 2 / ln (INR n)) 2)
    : ex_series (fun n => if (lt_dec n 2) then 0 else f n) <-> putnam_1982_a2_solution.
Proof. Admitted.
End putnam_1982_a2.

Section putnam_1982_a3.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1982_a3_solution := PI / 2 * ln PI.
Theorem putnam_1982_a3
    (f : R -> R := fun x => (atan (PI * x) - atan x) / x)
    : Lim_seq (fun n => RInt f 0 (INR n)) = putnam_1982_a3_solution.
Proof. Admitted.
End putnam_1982_a3.

Section putnam_1982_a5.
Require Import Reals.
Open Scope R.
Theorem putnam_1982_a5 
    (a b c d: nat)
    (habcd : Nat.le (Nat.add a c) 1982 /\ INR a / INR b + INR c / INR d < 1)
    : 1 - INR a / INR b - INR c / INR d > 1/pow 1983 3.
Proof. Admitted.
End putnam_1982_a5.

Section putnam_1982_a6.
Require Import Nat Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1982_a6_solution := False.
Theorem putnam_1982_a6
    (a: nat -> R) 
    : (Series a = 1 /\ forall (i j: nat), le i j -> Rabs (a i) > Rabs (a j)) /\
    forall (f: nat -> nat), Lim_seq (fun i => Rabs (INR (f i - i)) * Rabs (a i)) = 0 ->
    Series (fun i => a (f i)) = 1 -> putnam_1982_a6_solution.    
Proof. Admitted.
End putnam_1982_a6.

Section putnam_1982_b5.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1982_b5
    (F := fix f (n: nat) (x: R) :=
        match n with 
        | O => exp 1
        | S n' => ln x / ln (f n' x)
    end)
    : forall (x: R), x > Rpower (exp 1) (exp 1) -> 
    ex_lim_seq (fun n => F n x) /\ 
    let g (x: R) := Lim_seq (fun n => F n x) in
    continuity_pt g x.
Proof. Admitted.
End putnam_1982_b5.

Section putnam_1983_a1.
Require Import Nat Ensembles Finite_sets. From mathcomp Require Import div.
Definition putnam_1983_a1_solution := 2301.
Theorem putnam_1983_a1
    (E: Ensemble nat := fun n => n %| 10^(40) = true \/ n %| 20^(30) = true)
    : cardinal nat E putnam_1983_a1_solution.
Proof. Admitted.
End putnam_1983_a1.

Section putnam_1983_a3.
Require Import Nat Reals ZArith Znumtheory Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1983_a3
    (f : nat -> nat -> R := fun n p => sum_n (fun i => INR ((i+1) * n^i)) (p-1))
    : forall (p m n: nat), odd p = true /\ prime (Z.of_nat p) /\ (floor (f m p)) mod Z.of_nat p = (floor (f n p)) mod Z.of_nat p -> Z.of_nat m mod Z.of_nat p = Z.of_nat n mod Z.of_nat p.
Proof. Admitted.
End putnam_1983_a3.

Section putnam_1983_a4.
Require Import Binomial Reals Znumtheory Coquelicot.Coquelicot.
Open Scope nat_scope.
Theorem putnam_1983_a4
    (m: nat)
    (hm : m mod 6 = 5)
    : sum_n (fun n => (if (eq_nat_dec (n mod 3) 2) then Binomial.C m n else R0)) (m-2) <> R0.
Proof. Admitted.
End putnam_1983_a4.

Section putnam_1983_a5.
Require Import Nat Reals Coquelicot.Coquelicot.
Definition putnam_1983_a5_solution := true.
Theorem putnam_1983_a5
    : exists (a: R), forall (n: nat), gt n 0 -> even (Z.to_nat (floor (Rpower a (INR n))) - n) = putnam_1983_a5_solution.
Proof. Admitted.
End putnam_1983_a5.

Section putnam_1983_b4.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1983_b4
    (m: nat)
    (f : R -> R := fun n => n + IZR (floor (sqrt n)))
    (A := fix a (n: nat) :=
        match n with
        | O => INR m
        | S n' => f (a n')
    end)
    : exists (i: nat) (q: Z), A i = IZR (floor (A i)) /\ floor (A i) = Z.mul q q.
Proof. Admitted.
End putnam_1983_b4.

Section putnam_1983_b5.
Require Import Nat Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1983_b5_solution := ln (4/PI).
Theorem putnam_1983_b5
    (mindist : R -> R := fun x => Rmin (Rabs (x - IZR (floor x))) (Rabs (x - IZR (floor (x+1)))))
    : Lim_seq (fun n => 1/(INR n) * (RInt (fun x => mindist (INR n/x)) 1 (INR n))) = putnam_1983_b5_solution.
Proof. Admitted.
End putnam_1983_b5.

Section putnam_1984_a2.
Require Import Reals Coquelicot.Coquelicot.
Open Scope nat_scope.
Definition putnam_1984_a2_solution := 2%R.
Theorem putnam_1984_a2
    (f : nat -> R := fun n => Rdiv (pow 6 n) ((pow 3 (n+1) - pow 2 (n+1)) * pow 3 n - pow 2 n))
    : Series f = putnam_1984_a2_solution.
Proof. Admitted.
End putnam_1984_a2.

Section putnam_1984_a5.
Require Import Reals Factorial Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1984_a5_solution := INR (fact 9 * fact 8 * fact 4 / fact 25).
Theorem putnam_1984_a5
    : RInt (fun z => RInt (fun y => RInt (fun x => x * pow y 9 * pow z 8 * pow (1 - x - y - z) 4) 0 (1 - y - z)) 0 (1 - z)) 0 1 = putnam_1984_a5_solution.
Proof. Admitted.
End putnam_1984_a5.

Section putnam_1984_b2.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1984_b2_solution := 8.
Theorem putnam_1984_b2
    (f : R -> R -> R := fun x y => pow (x - y) 2 + pow (sqrt (2 - pow x 2) - 9 / y) 2)
    : exists (m: R), (forall (x y: R), 0 < x < sqrt 2 /\ y > 0 -> f x y >= m) /\
    (exists (x y: R), 0 < x < sqrt 2 /\ y > 0 -> f x y = m) ->
    m = putnam_1984_b2_solution.
Proof. Admitted.
End putnam_1984_b2.

Section putnam_1985_a3.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1985_a3_solution (x: R) := exp x - 1.
Theorem putnam_1985_a3
    (x: R) 
    (A := fix a (i j: nat) :=
        match (i,j) with
        | (i, 0) => x/pow 2 i
        | (i, S j') => pow (a i j') 2 + 2 * a i j'
    end) 
    : Lim_seq (fun n => A n n) = putnam_1985_a3_solution x.
Proof. Admitted.
End putnam_1985_a3.

Section putnam_1985_a5.
Require Import Nat Reals List Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1985_a5_solution (n: nat) := Nat.eq n 3 \/ Nat.eq n 4 \/ Nat.eq n 7 \/ Nat.eq n 8.
Theorem putnam_1985_a5
    (F : nat -> R -> R := fun n x => let f (i: nat):= cos (INR i * x) in 
        let coeffs := map f (seq 1 n) in
        fold_right Rmult 1 coeffs)
    : forall (n: nat), and (le 1 n) (le n 10) ->
    RInt (F n) 0 2*PI <> 0 <-> putnam_1985_a5_solution n.
Proof. Admitted.
End putnam_1985_a5.