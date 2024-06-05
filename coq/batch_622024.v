Section putnam_1975_a2.
Require Import List Reals Coquelicot.Coquelicot.
Open Scope C.
Definition putnam_1975_a2_solution : R -> R -> Prop := fun a b => b < 1 /\ b - a > -1 /\ b + a > -1.
Theorem putnam_1975_a2
    : forall a b : R, (forall z : C, z * z + a * z + b = 0 -> Cmod z < 1) <-> putnam_1975_a2_solution a b.
Proof. Admitted.
End putnam_1975_a2.

Section putnam_1975_a3.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1975_a3_solution1 (a b c: R): R * R * R :=  
    (Rpower (a / b) (1 / (b - a)), (1 - (Rpower (a / b) (Rpower (b / (b - a)) (1 / b)))), 0).
Definition putnam_1975_a3_solution2 (a b c: R): R * R * R :=  
    (0, (1 - (Rpower (b / c) (Rpower (b / (c - b)) (1 / b)))), Rpower (b / c) (1 / (c - b))).
Theorem putnam_1975_a3 
    (a b c : R)
    (hi : 0 < a /\ a < b /\ b < c)
    (P : (R * R * R) -> Prop := fun xyz: R * R * R => let '(x, y, z) := xyz in (x >= 0 /\ y >= 0 /\ z >= 0 /\ Rpower x b + Rpower y b + Rpower z b = 1))
    (f : (R * R * R) -> R := fun xyz: R * R * R => let '(x, y, z) := xyz in Rpower x a + Rpower y b + Rpower z c)
    : (P (putnam_1975_a3_solution1 a b c) /\ forall x y z : R, P (x, y, z) ->
    f (x, y, z) <= f (putnam_1975_a3_solution1 a b c)) /\
    (P (putnam_1975_a3_solution2 a b c) /\ forall x y z : R, P (x, y, z) ->
    f (x, y, z) >= f (putnam_1975_a3_solution2 a b c)).
Proof. Admitted.
End putnam_1975_a3.

Section putnam_1975_b5.
Require Import Factorial Reals Coquelicot.Coquelicot.
Theorem putnam_1975_b5
    (f : nat -> nat -> R := fix f (n x: nat) :=
        match n with 
        | O => exp (INR x)
        | S n' => INR x * f n' x
    end)
    : Series (fun n => f n 1%nat / INR (fact n)) = exp (exp 1).
Proof. Admitted.
End putnam_1975_b5.

Section putnam_1975_b6.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1975_b6
    (h : nat -> R := fun n => sum_n (fun r => 1 / (INR r + 1)) n)
    : forall (n: nat), gt n 2 -> INR n * INR (n + 1) ^ (1 / n) < h n < INR n - INR (n - 1) * Rpower (INR n) (-R1 / INR (n - 1)) .
Proof. Admitted.
End putnam_1975_b6.

Section putnam_1976_b5.
Require Import Factorial Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1976_b5_solution (n: nat) : R -> R := fun x => INR (fact n).
Theorem putnam_1976_b5
    : forall (n: nat), (fun x => sum_n (fun i => (-1) ^ i * Binomial.C n i * (x - INR i) ^ n) (n + 1)) = putnam_1976_b5_solution n.
Proof. Admitted.
End putnam_1976_b5.

Section putnam_1977_a1.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1977_a1_solution := 1.
Theorem putnam_1977_a1
    (y : R -> R := fun x => 2 * x ^ 4 + 7 * x ^ 3 + 3 * x - 5)
    (collinear : ((R * R) * (R * R) * (R * R) * (R * R)) -> Prop := fun ABCD =>
        let '((Ax, Ay), (Bx, By), (Cx, Cy), (Dx, Dy)) := ABCD in
        exists (m b : R),
        m * Ax = Ay /\
        m * Bx = By /\
        m * Cx = Cy /\
        m * Dx = Dy
    )
    : exists (k: R),
    forall (ABCD: (R * R) * (R * R) * (R * R) * (R * R)), 
    let '((Ax, Ay), (Bx, By), (Cx, Cy), (Dx, Dy)) := ABCD in
    (y Ax = Ay /\ 
    y Bx = By /\ 
    y Cx = Cy /\ 
    y Dx = Dy /\ 
    collinear ABCD) ->
    (Ax + Bx + Cx + Dx) / 4 = k <->
    k = putnam_1977_a1_solution.
Proof. Admitted.
End putnam_1977_a1.

Section putnam_1977_a3.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1977_a3_solution (f g: R -> R) : R -> R := fun x => g x - f (x - 3) + f (x - 1) + f (x + 1) - f (x + 3).
Theorem putnam_1977_a3
    (f g h : R -> R)
    (hf : Prop := f = fun x => (h (x + 1) + h (x - 1)) / 2)
    (hg : Prop := g = fun x => (h (x + 4) + h (x - 4)) / 2)
    : h = putnam_1977_a3_solution f g.
Proof. Admitted.
End putnam_1977_a3.

Section putnam_1977_a4.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1977_a4_solution (coeff1 coeff2 : nat -> Z) (n1 n2: nat) := (coeff1 = fun x => match x with | S O => Z.of_nat 1 | _ => Z.of_nat 0 end) /\ (coeff2 = fun x => match x with | O => Z.of_nat 1 | S O => (floor (-1)) | _ => Z.of_nat 0 end) /\ n1 = 1%nat /\ n2 = 1%nat.
Theorem putnam_1977_a4
    (p: (nat -> Z) -> nat -> (R -> R) := fun coeff n => (fun x => sum_n (fun i => IZR (coeff i) * x ^ i) (n + 1)))
    : forall (coeff1 coeff2: nat -> Z) (n1 n2: nat), 
    (IZR (coeff1 n1) <> 0 /\ IZR (coeff2 n2) <> 0) -> forall (x: R), 0 < x < 1 -> (p coeff1 n1) x / (p coeff2 n2) x = Series (fun n => x ^ (2 ^ n) / (1 - x ^ (2 ^ (n + 1)))) <->
    putnam_1977_a4_solution coeff1 coeff2 n1 n2.
Proof. Admitted.
End putnam_1977_a4.

Section putnam_1978_a3.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1978_a3_solution (a b c d: R) := b.
Theorem putnam_1978_a3
    (p : R -> R := fun x => 2 * (x ^ 6 + 1) + 4 * (x ^ 5 + x) + 3 * (x ^ 4 + x ^ 2) + 5 * x ^ 3)
    (a : R := Lim_seq (fun nInc => RInt (fun x => x / p x) 0 (INR nInc)))
    (b : R := Lim_seq (fun nInc => RInt (fun x => x ^ 2 / p x) 0 (INR nInc)))
    (c : R := Lim_seq (fun nInc => RInt (fun x => x ^ 3 / p x) 0 (INR nInc)))
    (d : R := Lim_seq (fun nInc => RInt (fun x => x ^ 4 / p x) 0 (INR nInc)))
    : Rmin a (Rmin b (Rmin c d)) = putnam_1978_a3_solution a b c d.
Proof. Admitted.
End putnam_1978_a3.

Section putnam_1978_a6.
Require Import List Reals Coquelicot.Coquelicot.
Theorem putnam_1978_a6
    (n : nat)
    (npos : gt n 0)
    (A : list (nat * nat))
    (hA : length A = n)
    (subA : list (nat * nat))
    (hsubA : forall (P1 P2: (nat * nat)), let '(Ax, Ay) := P1 in let (Bx, By) := P2 in (In (Ax, Ay) subA /\ In (Bx, By) subA) <-> (In (Ax, Ay) A /\ In (Bx, By) A /\ (sqrt (INR ((Ax  - Bx) ^ 2 + (Ay - By) ^ 2)) < 1)))
    : INR (length subA) < 2 * INR n ^ (3 / 2).
Proof. Admitted.
End putnam_1978_a6.

Section putnam_1978_b3.
Require Import Nat Reals Coquelicot.Coquelicot.
Theorem putnam_1978_b3
    (p : nat -> (R -> R) := fix p (n: nat) :=
        match n with
        | O => fun x => 1 + x
        | S O => fun x => 1 + 2 * x
        | S n' => if even n' 
            then fun x => p n' x + INR (S (S n')) / 2 * x * p (pred n') x
            else fun x => p n' x + INR (S n') / 2 * x * p (pred n') x
    end)
    (a : nat -> R)
    (ha : forall (n: nat), p n (a n) = 0)
    (huba : forall (n: nat), forall (r: R), p n r = 0 -> r <= (a n))
    : (forall (i j: nat), lt i j -> a i <= a j) /\ Lim_seq a = 0.
Proof. Admitted.
End putnam_1978_b3.

Section putnam_1978_b5.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1978_b5_solution := fun n => match n with | O => 1 | S (S O) => -4 | S (S (S (S O))) => 4 | _ => 0 end.
Theorem putnam_1978_b5
    (valid : (nat -> R) -> Prop := fun coeff => 
        let p := fun x => sum_n (fun i => coeff i * x ^ i) 5 in
        forall (x: R), -1 <= x <= 1 -> 0 <= p x <= 1
    )
    (maxcoeff : nat -> R)
    (hm : valid maxcoeff)
    (hubm : forall (coeff: nat -> R), valid coeff -> coeff 4%nat <= maxcoeff 4%nat)
    : maxcoeff = putnam_1978_b5_solution.
Proof. Admitted.
End putnam_1978_b5.

Section putnam_1980_a5.
Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_1980_a5
    (n : nat)
    (npos : gt n 0)
    (coeff : nat -> R)
    (hcoeff : coeff n <> 0)
    (p : R -> R := fun x => sum_n (fun i => coeff i * x ^ i) (S n))
    (h1 : nat -> Prop := fun a => RInt (fun x => p x * sin x) 0 (INR a) = 0)
    (h2 : nat -> Prop := fun a => RInt (fun x => p x * cos x) 0 (INR a) = 0)
    : exists (m: nat), forall (b: nat), h1 b /\ h2 b -> lt b m.
Proof. Admitted.
End putnam_1980_a5.

Section putnam_1981_a1.
Require Import Nat Reals Coquelicot.Coquelicot. From mathcomp Require Import div.
Definition putnam_1981_a1_solution := 1 / 8.
Theorem putnam_1981_a1
    (prod_n : (nat -> nat) -> nat -> nat := fix prod_n (m: nat -> nat) (n : nat) :=
        match n with
        | O => m 0%nat
        | S n' => mul (m n') (prod_n m n')
    end)
    (P : nat -> nat -> Prop := fun n k => 5 ^ k %| prod_n (fun m => Nat.pow m m) (S n) = true)
    (f : nat -> nat)
    (hf : forall (n: nat), gt n 1 -> P n (f n) /\ forall (k: nat), P n k -> le k (f n))
    : Lim_seq (fun n => INR (f n) / INR n ^ 2) = putnam_1981_a1_solution.
Proof. Admitted.
End putnam_1981_a1.

Section putnam_1983_a6.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1983_a6_solution := 2 / 9.
Theorem putnam_1983_a6
    : Lim_seq (fun a => let a := INR a in a ^ 4 * exp (-a ^ 3) * RInt (fun x => RInt (fun y => exp (x ^ 3 + y ^ 3)) 0 (a - x)) 0 a) = putnam_1983_a6_solution.
Proof. Admitted.
End putnam_1983_a6.

Section putnam_1984_b1.
Require Import Factorial ZArith Reals Coquelicot.Coquelicot.
Open Scope Z.
Definition putnam_1984_b1_solution (coeff1 coeff2 : nat -> Z) (n1 n2 : Z) := (coeff1 = fun x => match x with | O => 3 | S O => 1 | _ => 0 end) /\ (coeff2 = fun x => match x with | O => -2 | S O => -1 | _ => 0 end) /\ n1 = 1 /\ n2 = 1.
Theorem putnam_1984_b1
    (f : nat -> Z := fun n => (floor (sum_n (fun i => INR (fact (i + 1))) n)))
    (p: (nat -> Z) -> Z -> (nat -> Z) := fun coeff n => (fun x => (floor (sum_n (fun i => IZR ((coeff i) * (Z.of_nat (x ^ i)))) (Z.to_nat n + 1)))))
    : exists (coeff1 coeff2 : nat -> Z) (n1 n2 : Z), 
    let fix F (n: nat) :=
        match n with
        | O => f 0%nat
        | S O => f 1%nat
        | S ((S n'') as n') => (p coeff1 n1) n' * F n' + (p coeff2 n2) n'' * F n''
    end in
    f = F -> putnam_1984_b1_solution coeff1 coeff2 n1 n2.
Proof. Admitted.
End putnam_1984_b1.

Section putnam_1984_b5.
Require Import Nat Reals Coquelicot.Coquelicot.
Definition putnam_1984_b5_solution (coeff1 coeff2 : nat -> R) (n1 n2: nat) (a: Z) := a = 2%Z /\ (coeff1 = fun x => match x with | O => 0 | S O => -1 / 2 | S (S O) => 1 / 2 | _ => 0 end) /\ (coeff2 = fun x => match x with | O => 0 | S O => INR x | _ => 0 end) /\ n1 = 2%nat /\ n2 = 1%nat.
Theorem putnam_1984_b5
    (f : positive -> nat := fix f (n : positive) : nat :=
        match n with
        | xH => 1%nat
        | xO n' => f n'
        | xI n' => add 1 (f n')
    end)
    (g : nat -> R := fun m => sum_n (fun k => (-1) ^ (f (Pos.of_nat k)) * INR k ^ m) (2 ^ m - 1))
    (p: (nat -> R) -> nat -> (R -> R) := fun coeff n => (fun x => sum_n (fun i => coeff i * x ^ i) (n + 1)))
    : forall (m : nat), exists (a : Z) (coeff1 coeff2 : nat -> R) (n1 n2: nat), g m = (-1) ^ m * Rpower (IZR a) ((p coeff1 n1) (INR m)) * INR (fact (Z.to_nat (floor ((p coeff2 n2) (INR m))))) <->
    putnam_1984_b5_solution coeff1 coeff2 n1 n2 a.
Proof. Admitted.
End putnam_1984_b5.

Section putnam_1985_a1.
Require Import Ensembles List Finite_sets Nat Coquelicot.Coquelicot.
Import ListNotations.
Definition putnam_1985_a1_solution := (10, 10, 0, 0).
Theorem putnam_1985_a1
    : let E: Ensemble (list (Ensemble nat)) := fun A =>
        match A with
        | A1 :: A2 :: A3 :: _ =>
            Union nat (Union nat A1 A2) A3 = fun x => 1 <= x <= 11 /\ Intersection nat (Intersection nat A1 A2) A3 = Empty_set nat
        | _ => True
    end in 
    exists (a b c d : nat), cardinal (list (Ensemble nat)) E (2 ^ a * 3 ^ b * 5 ^ c * 7 ^ d) <->
    (a, b, c, d) = putnam_1985_a1_solution.
Proof. Admitted.
End putnam_1985_a1.

Section putnam_1985_a4.
Require Import Ensembles Nat Coquelicot.Coquelicot.
Definition putnam_1985_a4_solution := fun k => k = 87.
Theorem putnam_1985_a4
    (a : nat -> nat := fix a (n: nat) :=
        match n with
        | O => 3
        | S n' => 3 ^ (a n')
    end)
    : let E: Ensemble nat := fun k => k < 100 /\ forall (n: nat), n < 100 -> exists (i: nat), ge i n /\ a i mod 100 = k in
    E = putnam_1985_a4_solution.
Proof. Admitted.
End putnam_1985_a4.

Section putnam_1986_b4.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1986_b4_solution := True.
Theorem putnam_1986_b4
    (G : R -> R)
    (hGeq : forall (r: R), exists (m n: Z), G r = Rabs (r - sqrt (IZR (m ^ 2 + 2 * n ^ 2))))
    (hGlb : forall (r: R), forall (m n: Z), G r <= Rabs (r - sqrt (IZR (m ^ 2 + 2 * n ^ 2))))
    : Lim_seq (fun n => G (INR n)) = 0 <-> putnam_1986_b4_solution.
Proof. Admitted.
End putnam_1986_b4.

Section putnam_1988_b3.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1988_b3_solution := (1 + sqrt 3) / 2.
Theorem putnam_1988_b3
    (r : Z -> R)
    (hr : forall (n: Z), Z.ge n 1 -> (exists c d : Z, (Z.ge c 0 /\ Z.ge d 0) /\ Z.eq (Z.add c d) n /\ r n = Rabs (IZR c - IZR d * sqrt 3)) /\ (forall c d : Z, (Z.ge c 0 /\ Z.ge d 0 /\ (Z.add c d) = n) -> Rabs (IZR c - IZR d * sqrt 3) >= r n))
    : putnam_1988_b3_solution > 0 /\ (forall n : Z, Z.ge n 1 -> r n <= putnam_1988_b3_solution) /\ (forall (g: R), g > 0 -> (forall (n: Z), Z.ge n 1 /\ r n <= g) -> g >= putnam_1988_b3_solution).
Proof. Admitted.
End putnam_1988_b3.

Section putnam_1990_b3.
Require Import Ensembles Finite_sets Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1990_b3
    (Mmult_n :=
    fix Mmult_n {T : Ring} (A : matrix 2 2) (p : nat) :=
        match p with
        | O => A
        | S p' => @Mmult T 2 2 2 A (Mmult_n A p')
    end)
    (E : Ensemble (matrix 2 2) := fun (A: matrix 2 2) => 
        forall (i j: nat), and (le 0 i) (lt i 2) /\ and (le 0 j) (lt j 2) -> 
        (coeff_mat 0 A i j) <= 200 /\ exists (m: nat), coeff_mat 0 A i j = INR m ^ 2)
    : exists (sz : nat), gt sz 50387 /\ cardinal (matrix 2 2) E sz -> exists (A B: matrix 2 2), E A /\ E B /\ Mmult A B = Mmult B A.
Proof. Admitted.
End putnam_1990_b3.

Section putnam_1991_a3.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1991_a3_solution (coeff: nat -> R) (n: nat) : Prop := exists (A r1 r2: R), coeff = (fun x => match x with | O => A * r1 * r2 | S O => -A * (r1 + r2) | S (S O) => A | _ => 0 end) /\ n = 2%nat.
Theorem putnam_1991_a3
    (p: (nat -> R) -> nat -> (R -> R) := fun coeff n => (fun x => sum_n (fun i => coeff i * x ^ i) (n + 1)))
    : forall (coeff: nat -> R) (n: nat), ge n 2 ->
    (exists (r: nat -> R), 
    (forall (i j: nat), lt i j -> r i < r j) /\
    forall (i: nat), lt i n -> p coeff n (r i) = 0 /\ lt i (n - 1) -> (Derive (p coeff n)) ((r i + r (S i)) / 2) = 0) <->
    putnam_1991_a3_solution coeff n.
Proof. Admitted.
End putnam_1991_a3.