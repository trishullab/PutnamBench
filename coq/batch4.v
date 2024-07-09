Section putnam_2021_b4. 
Require Import PeanoNat. From mathcomp Require Import bigop fintype ssrnat. 
Theorem putnam_2021_b4
    (F := fix f (n: nat) : nat :=
        match n with
        | O => O
        | S O => 1
        | S ((S n'') as n') => f n' + f n''
    end)
    : forall (m: nat), m > 2 = true -> 
    exists (p: nat), (\prod_(k < (F m)) k^k) mod (F m) = F p.
Proof. Admitted. 
End putnam_2021_b4.

Section putnam_2020_a1. 
Require Import Ensembles Finite_sets Rdefinitions Reals Rpower. From mathcomp Require Import  bigop div fintype ssralg ssrnat ssrnum. 
Definition putnam_2020_a1_solution := 508536.
Theorem putnam_2020_a1
    (A: Ensemble nat := fun n => (2020 %| n = true /\ 
        (Rle (Rlog (INR 10) (INR n) + R1) (INR 2020)) /\ 
        exists (k l: nat), k >= l = true /\ n = \sum_(i < k-l+1) 10^(i+l)))
    : cardinal nat A putnam_2020_a1_solution.
Proof. Admitted. 
End putnam_2020_a1.

Section putnam_2019_b5. 
Require Import Nat PeanoNat Reals NewtonInt. From mathcomp Require Import bigop fintype ssrnat ssrnum ssralg fintype poly seq.
Open Scope ring_scope.
Definition putnam_2019_b5_solution (j k : nat) := j = 2019%nat /\ k = 1010%nat.
Theorem putnam_2019_b5
    (F := fix f (n: nat) : nat :=
        match n with
        | O => O
        | S O => 1%nat
        | S ((S n'') as n') => add (f n') (f n'')
    end)
    (R: numDomainType) 
    (p: {poly R}) 
    (hp: forall (n: nat), and (le 0%nat n) (le n 1008%nat) -> size p = 1008%nat /\ (p.[2*n%:R+1]) = (F (add (mul 2 n) 1%nat))%:R)
    (j k: nat)
    (hjk := p.[2019] = (F j)%:R - (F k)%:R)
    : putnam_2019_b5_solution j k.
Proof. Admitted. 
End putnam_2019_b5.

Section putnam_2018_a1.
Require Import Nat Factorial QArith. 
Open Scope Q_scope.
Definition putnam_2018_a1_solution (a b: nat): Prop := (a = 673%nat /\ b = 1358114%nat) \/ (a = 674%nat /\ b = 340033%nat) \/ (a = 1009%nat /\ b = 2018%nat) \/ (a =2018%nat /\ b = 1009%nat) \/ (a = 340033%nat /\ b = 674%nat) \/ (a = 1358114%nat /\ b = 673%nat).
Theorem putnam_2018_a1
    (hProp : nat -> nat -> Prop := fun a => fun b => 1/inject_Z (Z.of_nat a) + 1/inject_Z (Z.of_nat b) = 3/2018)
    : forall (a b: nat), gt a 0 /\ gt b 0 /\ hProp a b
    <-> putnam_2018_a1_solution a b.
Proof. Admitted. 
End putnam_2018_a1.

Section putnam_2018_a3. 
Require Import Reals List Rtrigo_def Coquelicot.Derive.
Open Scope R.
Definition putnam_2018_a3_solution : R := 480/49.
Theorem putnam_2018_a3
    (val : list R -> R := fun X => fold_right Rmult 1 (map (fun x => cos (INR 3 * x)) X))
    : (exists (X : list R), length X = 10%nat /\ putnam_2018_a3_solution = val X) /\
    (forall (X : list R), length X = 10%nat /\ putnam_2018_a3_solution >= val X).
Proof. Admitted.
End putnam_2018_a3.

Section putnam_2017_a1. 
From mathcomp Require Import div.
Definition putnam_2017_a1_solution (x: nat) := x > 0 /\ (x = 1 \/ 5 %| x = true).
Theorem putnam_2017_a1
    (A: nat -> Prop)
    (valid_set : (nat -> Prop) -> Prop := fun E => forall (n: nat), E 2 /\ E (n*n) -> E n /\ E n -> E ((n+5)*(n+5)))
    (hA : forall (B: nat -> Prop), valid_set A /\ valid_set B /\ forall (n: nat), A n -> B n)
    : forall n, ~ A n <-> putnam_2017_a1_solution n.
Proof. Admitted.
End putnam_2017_a1.