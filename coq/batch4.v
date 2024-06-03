Section putnam_2021_b4. 
Require Import PeanoNat. From mathcomp Require Import bigop fintype ssrnat. 
Theorem putnam_2021_b4: 
    let F :=
        fix f (n: nat) : nat :=
            match n with
            | O => O
            | S O => 1
            | S ((S n'') as n') => f n' + f n''
        end in
    forall (m: nat), m > 2 = true -> 
    exists (p: nat), (\prod_(k < (F m)) k^k) mod (F m) = F p.
Proof. Admitted. 
End putnam_2021_b4.

Section putnam_2020_a1. 
Require Import Ensembles Finite_sets Rdefinitions Reals Rpower. From mathcomp Require Import  bigop div fintype ssralg ssrnat ssrnum. 
Definition putnam_2020_a1_solution := 508536.
Theorem putnam_2020_a1: 
    exists (A: Ensemble nat),
    forall (n: nat), 
    (
        (2020 %| n = true 
        /\ (Rle (Rlog (INR 10) (INR n) + R1) (INR 2020)) 
        /\ exists (k l: nat), k >= l = true /\ n = \sum_(i < k-l+1) 10^(i+l)) 
        <-> A n
    )
    -> cardinal nat A putnam_2020_a1_solution.
Proof. Admitted. 
End putnam_2020_a1.

Section putnam_2019_b5. 
Require Import Nat PeanoNat Reals NewtonInt. From mathcomp Require Import bigop fintype ssrnat ssrnum ssralg fintype poly seq.
Local Open Scope ring_scope.
Theorem putnam_2019_b5: 
    let F :=
        fix f (n: nat) : nat :=
            match n with
            | O => O
            | S O => 1%nat
            | S ((S n'') as n') => add (f n') (f n'')
        end in
    exists (R: numDomainType) (p: {poly R}), forall (n: nat), 
    and (le 0%nat n) (le n 1008%nat) -> size p = 1008%nat /\ (p.[2*n%:R+1]) = (F (add (mul 2 n) 1%nat))%:R 
    -> exists (j k: nat), p.[2019] = (F j)%:R - (F k)%:R.
Proof. Admitted. 
End putnam_2019_b5.

Section putnam_2018_a1.
Require Import Nat Factorial QArith. 
Open Scope Q_scope.
Definition putnam_2018_a1_solution (a b: nat): Prop := (a = 673%nat /\ b = 1358114%nat) \/ (a = 674%nat /\ b = 340033%nat) \/ (a = 1009%nat /\ b = 2018%nat) \/ (a =2018%nat /\ b = 1009%nat) \/ (a = 340033%nat /\ b = 674%nat) \/ (a = 1358114%nat /\ b = 673%nat).
Theorem putnam_2018_a1: 
    forall (a b: nat), gt a 0 /\ gt b 0 ->
    1/inject_Z (Z.of_nat a) + 1/inject_Z (Z.of_nat b) = 3/2018 
    <-> putnam_2018_a1_solution a b.
Proof. Admitted. 
End putnam_2018_a1.

Section putnam_2018_a3. 
Require Import Reals List Rtrigo_def Coquelicot.Derive.
Open Scope R.
Definition putnam_2018_a3_solution : R := 480/49.
Theorem putnam_2018_a3 :
    forall (X: list R), length X = 10%nat ->
    let f x := cos (INR 3 * x) in
    let coeffs := map f X in
    let val := fold_right Rmult 1 coeffs in
    putnam_2018_a3_solution >= val
    /\
    exists (X: list R), length X = 10%nat ->
    let f x := cos (INR 3 * x) in
    let coeffs := map f X in
    let val := fold_right Rmult 1 coeffs in
    putnam_2018_a3_solution = val.
Proof. Admitted.
End putnam_2018_a3.

Section putnam_2017_a1. 
From mathcomp Require Import div.
Definition putnam_2017_a1_solution (A: nat -> Prop) (x: nat) := x > 0 /\ (x = 1 \/ 5 %| x = true) -> ~ A x.
Theorem putnam_2017_a1: 
    exists (A: nat -> Prop), forall (B: nat -> Prop),
    let valid_set (A: nat -> Prop): Prop := forall (n: nat), A 2 /\ A (n*n) -> A n /\ A n -> A ((n+5)*(n+5)) in
    valid_set A /\ valid_set B /\ forall (n: nat), A n -> B n -> putnam_2017_a1_solution A n.
Proof. Admitted.
End putnam_2017_a1.