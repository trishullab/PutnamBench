Section putnam_1974_a1.
Require Import Nat List Ensembles Finite_sets. From mathcomp Require Import div fintype perm ssrbool.
Definition putnam_1974_a1_solution := 11.
Theorem putnam_1974_a1
    (s : list nat := seq 1 17)
    : exists (m: nat),
    ((forall (p : nat -> Prop),
    let E: Ensemble nat := fun x : nat => List.In x s /\ p x in
    ~ exists (p q r : nat), p <> q /\ q <> r /\ coprime p q /\ coprime q r /\ coprime p r /\ exists (n: nat), cardinal nat E n /\ n <= m) /\
    (exists (p : nat -> Prop), 
    let E: Ensemble nat := fun x => List.In x s /\ p x in
    ~ exists (p q r : nat), p <> q /\ q <> r /\ coprime p q /\ coprime q r /\ coprime p r /\ exists (n: nat), cardinal nat E m)) <->
    m = putnam_1974_a1_solution.
Proof. Admitted.
End putnam_1974_a1.

Section putnam_1974_a4.
Require Import Nat Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1974_a4_solution (n: nat) := INR n * (Binomial.C (n - 1) (n / 2) - 1) / (2 ^ (n - 1)).
Theorem putnam_1974_a4
    : forall (n: nat), 1 / (2 ^ (pred n)) * sum_n (fun i => (INR n - 2 * INR (S i)) * Binomial.C n (i + 1)) (n / 2) = putnam_1974_a4_solution n.
Proof. Admitted.
End putnam_1974_a4.

Section putnam_1974_a6.
Require Import Factorial Reals Coquelicot.Coquelicot. 
Definition putnam_1974_a6_solution1 (n N : nat) := fact N mod n = 0%nat /\ forall (N': nat), fact N' mod n = 0%nat -> ge N' N.
Definition putnam_1974_a6_solution2 : nat := 25.
Theorem putnam_1974_a6
    (f : nat -> nat)
    (cond : nat -> (nat -> Z) -> Prop := fun n coeff => coeff n = Z.of_nat 1 /\ let p : nat -> R := fun x => sum_n (fun i => IZR (coeff i) * INR x ^ i) (n + 1) in (forall (m: Z), Z.to_nat (floor (p (Z.to_nat m))) mod n = 0%nat))
    (hf : forall (n: nat), exists (coeff: nat -> Z), cond (f n) coeff)
    (hflb : forall (n: nat) (coeff: nat -> Z), cond n coeff -> ge n (f n))
    : forall (n: nat), exists N, f n = N /\ putnam_1974_a6_solution1 n N /\ f 1000000%nat = putnam_1974_a6_solution2.
Proof. Admitted.
End putnam_1974_a6.

Section putnam_1974_b3.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1974_b3_solution := 1.
Theorem putnam_1974_b3
    : ~ exists (p q: Z), acos (1 / 3) / PI = IZR p / IZR q.
Proof. Admitted.
End putnam_1974_b3.

Section putnam_1974_b5.
Require Import Factorial Reals Coquelicot.Coquelicot.
Definition putnam_1974_b5_solution := 1.
Theorem putnam_1974_b5
    (f : nat -> R -> R := fun n x => sum_n (fun i => x ^ i / INR (fact i)) (n + 1))
    : forall (n : nat), f n (INR n) > exp PI / 2.
Proof. Admitted.
End putnam_1974_b5.

Section putnam_1974_b6.
Require Import Ensembles Finite_sets Reals Coquelicot.Coquelicot.
Definition putnam_1974_b6_solution1 : nat := 21000/3.
Definition putnam_1974_b6_solution2 : nat := 21000/3.
Definition putnam_1974_b6_solution3 : nat := 21000/3 + 1.
Definition putnam_1974_b6_solution4 : nat := 21001/3 + 1.
Definition putnam_1974_b6_solution5 : nat := 21001/3.
Definition putnam_1974_b6_solution6 : nat := 21001/3 + 1.
Theorem putnam_1974_b6
    (E : Ensemble R)
    (E' : Ensemble R)
    (pres : R -> Prop)
    (hE : cardinal R E 1000)
    (hE' : cardinal R E 1001)
    (habc : nat -> Ensemble (Ensemble R) := fun val => fun (subE : Ensemble R) => exists (subEsz: nat), (forall x: R, subE x -> E x /\ pres x) /\ cardinal R subE subEsz /\ subEsz mod 3 = val)
    (habc' : nat -> Ensemble (Ensemble R) := fun val => fun (subE' : Ensemble R) => exists (subEsz': nat), (forall x: R, subE' x -> E' x /\ pres x) /\ cardinal R subE' subEsz' /\ subEsz' mod 3 = val)
    : cardinal (Ensemble R) (habc 0%nat) putnam_1974_b6_solution1 /\
    cardinal (Ensemble R) (habc 1%nat) putnam_1974_b6_solution2 /\
    cardinal (Ensemble R) (habc 2%nat) putnam_1974_b6_solution3 /\
    cardinal (Ensemble R) (habc' 0%nat) putnam_1974_b6_solution4 /\
    cardinal (Ensemble R) (habc' 1%nat) putnam_1974_b6_solution5 /\
    cardinal (Ensemble R) (habc' 2%nat) putnam_1974_b6_solution6.
Proof. Admitted.
End putnam_1974_b6.
