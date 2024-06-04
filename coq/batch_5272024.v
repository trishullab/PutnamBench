Require Import Nat Reals ZArith Lia.

Section putnam_1990_a5.
From mathcomp Require Import matrix ssralg.
Open Scope ring_scope.
Theorem putnam_1990_a5: 
    forall (R: ringType) (n: nat) (A B: 'M[R]_n), 
    mulmx (mulmx (mulmx A B) A) B = 0 ->
    mulmx (mulmx (mulmx B A) B) A = 0.
Proof. Admitted.
End putnam_1990_a5.

Section putnam_1990_b1.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1990_b1_solution (f: R -> R) := f = (fun x => sqrt 1990 * exp x) /\ f = (fun x => -sqrt 1990 * exp x).
Theorem putnam_1990_b1: 
    forall (f: R -> R), continuity f /\ forall x, ex_derive_n f 1 x -> 
    forall x, pow (f x) 2 = RInt (fun t => pow (f t) 2 + pow ((Derive f) t) 2) 0 x + 1990 ->
    putnam_1990_b1_solution f.
Proof. Admitted.
End putnam_1990_b1.

Section putnam_1990_b2.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1990_b2: 
    forall (x z: R), Rabs x < 1 /\ Rabs z > 1 ->
    let P (j: nat) := (sum_n (fun i => 1 - z * x ^ i) j) / (sum_n (fun i => z - x ^ i) j+1) in
    1 + Series (fun j => 1 + x ^ (j+1) * P j) = 0.
Proof. Admitted.
End putnam_1990_b2.

Section putnam_1990_b5.
Require Import Reals Ensembles Finite_sets Coquelicot.Coquelicot.
Definition putnam_1990_b5_solution := True.
Open Scope R.
Theorem putnam_1990_b5: 
    exists (a: nat -> R), 
    let pn (n: nat) (x: R) := sum_n (fun i => a i * pow x i) n in
    forall (n: nat), gt n 0 -> exists (roots: Ensemble R), cardinal R roots n /\ forall (r: R), roots r <-> pn n r = 0 <->
    putnam_1990_b5_solution.
Proof. Admitted.
End putnam_1990_b5.

Section putnam_1991_a2.
From mathcomp Require Import matrix ssralg ssrbool.
Open Scope ring_scope.
Definition putnam_1991_a2_solution := False.
Theorem putnam_1991_a2: 
    forall (R: comUnitRingType) (n: nat) (A B: 'M[R]_n), 
    A <> B ->
    mulmx (mulmx A A) A = mulmx (mulmx B B) B /\
    mulmx (mulmx A A) B = mulmx (mulmx B B) A ->
    (mulmx A A + mulmx B B) \in unitmx <->
    putnam_1991_a2_solution.
Proof. Admitted.
End putnam_1991_a2.

Section putnam_1991_a5.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1991_a5_solution := 1/3.
Theorem putnam_1991_a5: 
    exists (m: R),
    (forall (y: R), 0 <= y <= 1 -> 
    m >= RInt (fun x => sqrt (pow x 4 + pow (y - pow y 2) 2)) 0 y) /\
    (exists (y: R), 0 <= y <= 1 -> 
    m >= RInt (fun x => sqrt (pow x 4 + pow (y - pow y 2) 2)) 0 y) ->
    m = putnam_1991_a5_solution.
Proof. Admitted.
End putnam_1991_a5.

Section putnam_1991_b1.
Require Import Nat Coquelicot.Coquelicot.
Open Scope nat_scope.
Definition putnam_1991_b1_solution (A: nat) := exists (m: nat), A = pow m 2.
Theorem putnam_1991_b1: 
    let eS (n: nat) := sub n (pow (sqrt n) 2) in
    let a_seq := 
        fix a (A k: nat) :=
        match k with
        | O => A
        | S k' => a A k' + eS (a A k')
    end in
    forall (A: nat), A > 0 -> Lim_seq (fun k => Raxioms.INR (a_seq A k)) = Rdefinitions.R0 <->
    putnam_1991_b1_solution A.
Proof. Admitted.
End putnam_1991_b1.

Section putnam_1991_b2.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1991_b2:
    forall (f g: R -> R), (~ exists (c: R), f = (fun _ => c) \/ g = (fun _ => c)) /\ forall x, ex_derive_n f 1 x /\ forall x, ex_derive_n g 1 x ->
    forall (x y: R), f (x + y) = f x * f y - g x * g y /\
                     g (x + y) = f x * g y - g x * f y ->
    Derive f 0 = 0 ->
    forall (x: R), pow (f x) 2 + pow (g x) 2 = 1.
Proof. Admitted.
End putnam_1991_b2.

Section putnam_1991_b4.
Require Import Nat Reals ZArith Znumtheory Binomial Coquelicot.Coquelicot.
Theorem putnam_1991_b4: 
    forall (p: nat), odd p = true /\ prime (Z.of_nat p) -> 
    let expr : R := sum_n (fun j => Binomial.C p j * Binomial.C (p + j) j) p in
    (floor expr) mod (Z.pow (Z.of_nat p) 2) = Z.add (Z.pow 2 (Z.of_nat p)) 1.
Proof. Admitted.
End putnam_1991_b4.

Section putnam_1991_b5.
Require Import Reals Nat ZArith Znumtheory Ensembles Finite_sets Coquelicot.Coquelicot. From mathcomp Require Import fintype seq ssrbool.
Open Scope R.
Definition putnam_1991_b5_solution (p: nat) : nat := p / 4 + 1.
Variable A: Ensemble Z.
Theorem putnam_1991_b5: 
    forall (p: nat), odd p = true /\ prime (Z.of_nat p) ->
    exists (A B: Ensemble Z), forall (z: Z), 
    (A z <-> exists (m: 'I_p), z = Z.of_nat (pow (nat_of_ord m) 2)) /\
    (B z <-> exists (m: 'I_p), z = Z.of_nat (pow (nat_of_ord m) 2 + 1)) ->
    let C : Ensemble Z := Intersection Z A B in
    cardinal Z C (putnam_1991_b5_solution p).
Proof. Admitted.
End putnam_1991_b5.

Section putnam_1991_b6.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1991_b6: 
    forall (a b: R), 
    let ineq_holds (c: R) := forall (u x: R), 0 < Rabs u <= c /\ 0 < x < 1 -> Rpower a x * Rpower b (1 - x) <= a * sinh (u * x) / sinh u + b * sinh (1 - x) / sinh u in
    exists (mc: R), ineq_holds mc /\
    forall (c: R), ineq_holds c -> c <= mc.
Proof. Admitted.
End putnam_1991_b6.

Section putnam_1992_a1.
Require Import Basics.
Theorem putnam_1992_a1: 
    forall (f: nat -> nat), 
    (forall (n: nat), f (f n) = n /\ f (f (n + 2)) + 2 = n) /\
    f 0 = 1 <->
    f = (fun n => 1 - n).
Proof. Admitted.
End putnam_1992_a1.

Section putnam_1992_a2.
Require Import Reals Binomial Factorial Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1992_a2_solution := 1992.
Theorem putnam_1992_a2: 
    let C (a: R) := (Derive_n (fun x => Rpower (1 + x) a) 1992) 0 / INR (fact 1992) in
    RInt (fun y => C( - y - 1 ) * (sum_n (fun k => 1 / (y + INR k)) 1992)) 0 1 = putnam_1992_a2_solution.
Proof. Admitted.
End putnam_1992_a2.

Section putnam_1992_a3.
Require Import Nat. From mathcomp Require Import div fintype perm ssrbool.
Definition putnam_1992_a3_solution (n x y: nat) := True.
Theorem putnam_1992_a3: 
    forall (m: nat), m > 0 ->
    forall (n x y: nat), n > 0 /\ x > 0 /\ y > 0 /\ coprime n m ->
    pow (pow x 2 + pow y 2) m = pow (x * y) m <->
    putnam_1992_a3_solution n x y.
Proof. Admitted.
End putnam_1992_a3.

Section putnam_1992_a4.
Require Import Nat Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1992_a4_solution (k: nat) := if odd k then 0 else pow (-1) (k/2).
Theorem putnam_1992_a4: 
    let f (n: R) := (pow (1 / n) 2) / ((pow (1 / n) 2) + 1) in
    let df_0 (k: nat) := (Derive_n f k) 0 in
    forall (k: nat), gt k 0 -> df_0 k = putnam_1992_a4_solution k.
Proof. Admitted.
End putnam_1992_a4.

Section putnam_1992_a5.
Require Import BinPos Nat ZArith.
Definition putnam_1992_a5_solution := 1.
Theorem putnam_1992_a5: 
    let k:= 
        fix count_ones (n : positive) : nat :=
        match n with
        | xH => 1
        | xO n' => count_ones n'
        | xI n' => 1 + count_ones n'
    end in
    let a (n: positive) := (k n) mod 2 in
    ~ exists (k m: nat), 
    forall (j: nat), 0 <= j <= m - 1 -> a (Pos.of_nat (k + j)) = a (Pos.of_nat (k + m + j)) /\ a (Pos.of_nat (k + m + j)) = a (Pos.of_nat (k + 2 * m + j)).
Proof. Admitted.
End putnam_1992_a5.

Section putnam_1992_b1.
Require Import Nat Ensembles Finite_sets Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1992_b1_solution (n: nat) := sub (mul 2 n) 3.
Theorem putnam_1992_b1: 
    forall (n: nat) (E: Ensemble R),
    let AE_criterion (E AE: Ensemble R) := cardinal R E n /\ forall (m: R), AE m <-> exists (p q: R), E p /\ E q /\ m = (p + q) / 2 in
    gt n 2 ->
    exists (minAE: nat), 
    (forall (AE: Ensemble R) (szAE: nat), cardinal R AE szAE /\ cardinal R AE minAE -> ge szAE minAE) <->
    minAE = putnam_1992_b1_solution n.
Proof. Admitted.
End putnam_1992_b1.

Section putnam_1992_b4.
From mathcomp Require Import ssrnat ssrnum ssralg poly polydiv seq.
Open Scope ring_scope.
Definition putnam_1992_b4_solution := 3984%nat.
Theorem putnam_1992_b4: 
    forall (R: numDomainType) (p: {poly R}),
    gt (size p) 1992 /\ exists c: R, gcdp_rec p ('X^3 - 'X) = polyC c ->
    let cond (f g: {poly R}) := derivn 1992 (p %/ ('X^3 - 'X)) = f %/ g in
    exists mindeg, 
    ((forall (f g: {poly R}), cond f g /\ ge (size f) mindeg) /\ 
    (exists (f g: {poly R}), cond f g /\ size f = mindeg))  <->
    mindeg = putnam_1992_b4_solution.
Proof. Admitted.
End putnam_1992_b4.

Section putnam_1993_a2.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1993_a2: 
    forall (x: nat -> R) (n: nat), gt n 0 -> 
    pow (x n) 2 - x (pred n) * x (S n) = 1 ->
    exists (a: R), ge n 1 -> x (S n) = a * x n - x (pred n).
Proof. Admitted.
End putnam_1993_a2.

Section putnam_1993_a4.
Require Import List Bool Reals Peano_dec Coquelicot.Coquelicot.
Open Scope nat_scope.
Theorem putnam_1993_a4: 
    forall (x y: list nat), length x = 19 /\ length y = 93 /\ forall (n: nat), In n x -> 1 < n <= 93 /\ In n y -> 1 < n <= 19 ->
    exists (presentx presenty : nat -> bool), 
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
Theorem putnam_1993_a5: 
    let f (x: R) := (pow x 2 - x) / (pow x 3 - 3 * x + 1) in
    exists (p q: Z),
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
Theorem putnam_1993_b1: 
    let cond (n: nat) := forall (m: nat), and (lt 0 m) (lt m 1993) -> exists (k: nat), INR m / 1993 < INR k / INR n < INR (m + 1) / 1994 in
    exists (mn: nat), cond mn /\ forall (n: nat), cond n -> ge n mn <->
    mn = putnam_1993_b1_solution.
Proof. Admitted.
End putnam_1993_b1.

Section putnam_1993_b4.
Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1993_b4: 
    forall (K: (R * R) -> R) (f g: R -> R),
    (forall (xy : R * R), let (x, y) := xy in 0 <= x <= 1 /\ 0 <= y <= 1 /\ K xy > 0 /\ continuous K xy) /\
    (forall (x: R), 0 <= x <= 1 /\ f x > 0 /\ g x > 0 /\ continuity f /\ continuity g) ->
    forall (x: R), 0 <= x <= 1 -> 
    (RInt (fun y => f y * K (x, y)) 0 1) = g x /\
    RInt (fun y => g y * K (x, y)) 0 1 = f x ->
    f = g.
Proof. Admitted.
End putnam_1993_b4.

Section putnam_1994_a1.
Require Import Nat Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1994_a1: 
    exists (a: nat -> R), forall (n: nat), gt n 0 -> 0 < a n <= a (mul 2 n) + a (add (mul 2 n) 1) ->
    ~ ex_lim_seq (fun n => sum_n (fun m => a m) n).
Proof. Admitted.
End putnam_1994_a1.

Section putnam_1994_b1.
Require Import Ensembles Finite_sets ZArith.
Open Scope Z.
Definition putnam_1994_b1_solution (n: Z) := 315 <= n <= 325 \/ 332 <= n <= 350.
Theorem putnam_1994_b1: 
    forall (n: Z), exists (E: Ensemble Z), cardinal Z E 15 -> 
    forall (m: Z), E m -> Z.abs (m * m - n) <= 250 ->
    putnam_1994_b1_solution n.
Proof. Admitted.
End putnam_1994_b1.