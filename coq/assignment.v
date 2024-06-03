Section putnam_2018_b3.
From mathcomp Require Import div seq ssrnat ssrbool.
Definition solution_01 := [:: 2^2; 2^4; 2^8; 2^(16)].
Theorem putnam_2018_b3:
    forall (n: nat),
        n > 0 ->
        (n < 10^(100)) /\
        (n %| 2^n) /\
        ((n-1) %| (2^n-1)) /\
        ((n-2) %| (2^n-2)) <->
        n \in solution_01.
Proof. Admitted.
End putnam_2018_b3.

Section putnam_2017_b3.
Require Import Reals Coquelicot.Series.
Local Open Scope R_scope.
Theorem putnam_2017_b3:
    forall (c: nat -> R),
        (forall n, c n = 0 \/ c n = 1) ->
        Series (fun n => c n * (2/3)^n) = 3/2 ->
        ~ exists a b: Z,
                b <> 0%Z /\
                (Series (fun n => c n * (1/2)^n)) = IZR a / IZR b.
Proof. Admitted.
End putnam_2017_b3.

Section putnam_2020_b5.
From mathcomp Require Import fintype seq ssrbool. Require Import Reals Coquelicot.Complex.
Local Open Scope C.
Theorem putnam_2020_b5:
    forall (z: 'I_4 -> C) (i0 n: 'I_4),
        (Cmod (z n) < 1)%R /\
        z n <> RtoC 1 ->
        RtoC 3 - z (nth i0 (enum 'I_4) 0) - z (nth i0 (enum 'I_4) 1) -
        z (nth i0 (enum 'I_4) 2) - z (nth i0 (enum 'I_4) 3) +
        z (nth i0 (enum 'I_4) 0) * z (nth i0 (enum 'I_4) 1) *
        z (nth i0 (enum 'I_4) 2) * z (nth i0 (enum 'I_4) 3) <> RtoC 0.
Proof. Admitted.
End putnam_2020_b5.

Section putnam_1998_a3.
Require Import Reals Coquelicot.Derive.
Local Open Scope R.
Theorem putnam_1998_a3:
    forall (f: R -> R),
        continuity (Derive_n f 3) ->
        exists (a: R),
            (Derive_n f 0) a * (Derive_n f 1) a * (Derive_n f 2) a *
            (Derive_n f 3) a >= 0.
Proof. Admitted.
End putnam_1998_a3.

Section putnam_2018_a5.
Require Import Reals Coquelicot.Derive.
Local Open Scope R_scope.
Theorem putnam_2018_a5:
    forall (n : nat) (f: R -> R) (x: R),
        (ex_derive_n f n x) ->
        f 0 = 0 /\
        f 1 = 1 /\
        (forall x, f x > 0) ->
        exists (n: nat) (x: R),
            gt n 0 ->
            ((Derive_n f n) x > 0).
Proof. Admitted.
End putnam_2018_a5.

Section putnam_2018_b4.
Require Import Reals.
Theorem putnam_2018_b4:
    forall (a: R),
        exists (n: nat),
            let s :=
                fix s (n:nat) (a: R) {struct n}: R :=
                    match n with
                    | O => R1
                    | S O => a
                    | S (S O) => a
                    | S (S ((S n''') as n'') as n') =>
                            (2 * (s n' a) * (s n'' a) - (s n''' a))%R
                    end in
            s n a = R0 ->
            forall (a: R),
                exists (m: nat) (n: nat),
                    forall (i: nat),
                        i >= m ->
                        s (i+n) a = s i a.
Proof. Admitted.
End putnam_2018_b4.

Section putnam_2018_b2.
Require Import Reals. From Coqtail Require Import Cpow.
Local Open Scope C_scope.
Theorem putnam_2018_b2 :
    forall (n : nat) (z : C),
        Cnorm z <= 1 ->
        ~exists z,
            (fix f (n : nat) (z : C) (m : nat) : C :=
                 match m with
                 | O => 0
                 | S m' =>
                         (R_R_to_C (INR (n - m')) 0) * (z ^ m) + f n z m'
                 end) n z 0%nat = 0.
Proof. Admitted.
End putnam_2018_b2.

Section putnam_2014_a1.
Require Import Reals Factorial Znumtheory Coquelicot.Derive.
Theorem putnam_2014_a1:
    forall (n: nat),
        exists a b: Z,
            b <> 0%Z /\
            (Derive_n (fun x => (1 - x + x^2) * exp x) n) 0 /
            INR (fact n) = IZR a / IZR b /\
            (a = 1%Z /\ prime a) /\
            Zis_gcd a b 1.
Proof. Admitted.
End putnam_2014_a1.

Section putnam_2014_a5.
From mathcomp Require Import ssrnat ssrnum ssralg fintype poly polydiv.
Local Open Scope ring_scope.
Theorem putnam_2014_a5:
    forall (R: numDomainType) (j k : nat),
        j <> k ->
        let pj : {poly R}:= \sum_(i < j.+1) ((i%:R + 1) *: 'X^i) in
        let pk : {poly R}:= \sum_(i < k.+1) ((i%:R + 1) *: 'X^i) in
        gcdp_rec pj pk = 1.
Proof. Admitted.
End putnam_2014_a5.

Section putnam_1998_b6.
Require Import Reals.
Local Open Scope Z.
Theorem putnam_1998_b6:
    forall (a b c: Z),
        exists (n: Z),
            n > 0 ->
            forall (m : Z),
                n * n * n + a * n * n + b * n + c <> m * m.
Proof. Admitted.
End putnam_1998_b6.

Section putnam_1999_a2.
From mathcomp Require Import ssrnat ssrnum ssralg fintype poly.
Local Open Scope ring_scope.
Theorem putnam_1999_a2:
    forall (R: numDomainType) (p : {poly R}),
        forall x, p.[x] > 0 = true ->
        exists (k : nat) (f : nat -> {poly R}),
            p = \sum_(i < k) (f i)*(f i).
Proof. Admitted.
End putnam_1999_a2.

(* Section putnam_1999_a5.
Require Import Reals NewtonInt. From mathcomp Require Import all_algebra all_ssreflect ssrnat ssrnum ssralg fintype poly seq.
Local Open Scope ring_scope.
Theorem putnam_1999_a5:
    forall (R: numDomainType) (p: {poly R}),
        (size p = 1999%nat) ->
        exists (C: R), Num.norm p.[0] <= GRing.mul C (Num.norm p.[0]).
Proof. Admitted.
End putnam_1999_a5. *)

Section putnam_1999_b4.
Require Import Reals Coquelicot.Derive.
Local Open Scope R_scope.
Theorem putnam_1999_b4 :
    forall (f: R -> R),
        continuity (Derive_n f 3) ->
        forall (x: R),
            f x > 0 /\ (Derive_n f 1) x > 0 /\ (Derive_n f 2) x > 0 /\
            (Derive_n f 3) x > 0 ->
            forall (x: R),
                (Derive_n f 3) x <= f x ->
                forall (x: R),
                    (Derive_n f 1) x < 2 * f x.
Proof. Admitted.
End putnam_1999_b4.

Section putnam_1999_b6.
Require Import Reals List Znumtheory.
Theorem putnam_1999_b6 :
    forall (A : list Z),
        forall (x: Z),
            In x A ->
            x > 1 ->
            forall (n: Z),
                exists (s: Z),
                    In s A ->
                    Zis_gcd s n 1 \/ Zis_gcd s n s ->
                    exists (s: Z) (t: Z) (p: Z),
                        In s A /\ In t A /\ prime p ->
                        Zis_gcd s t p.
Proof. Admitted.
End putnam_1999_b6.

Section putnam_2000_a2.
Require Import Reals.
Local Open Scope Z.
Theorem putnam_2000_a2:
    forall (m: Z),
        exists (n: Z),
            n >= m /\
            exists (a1 a2 b1 b2 c1 c2: Z),
                n = a1*a1 + a2*a2 /\
                n+1 = b1*b1 + b2*b2 /\
                n+2 = c1*c1 + c2*c2.
Proof. Admitted.
End putnam_2000_a2.

Section putnam_2000_b4.
Local Open Scope R_scope.
Require Import Reals.
Theorem putnam_2000_b4:
    forall (f: R -> R),
        continuity f ->
        forall x, f (2*x*x-1) = 2*x*(f x) ->
        forall x, -1 <= x <= 1 -> f x = 0. 
Proof. Admitted.
End putnam_2000_b4.

Section putnam_2001_a1.
Require Import Ensembles RelationClasses.
Theorem putnam_2001_a1:
    forall {A:Type} (op: A->A->A),
        Ensemble A ->
        forall (a b: A), op (op a b) a = b ->
        forall (a b: A), op a (op b a) = b.
Proof. Admitted.
End putnam_2001_a1.

Section putnam_2001_b4.
Require Import Basics List QArith. From mathcomp Require Import bigop fintype seq ssrbool ssreflect ssrnat ssrnum ssralg    finfun. 
Local Open Scope Q_scope.
Definition putnam_2001_b4_solution := False.
Definition image (f: Q -> Q) := fun y => exists(x: Q), f x = y.
Fixpoint compose_n {A : Type} (f : A -> A) (n : nat) :=
        match n with
        | O => fun x => x
        | S n' => compose f (compose_n f n')
end.
Theorem putnam_2001_b4:
    let f (x : Q) : Q := x - 1 / x in
    exists (x: Q),
        ~ In x [:: -1; 0; 1] ->
        forall (n: nat), (image (compose_n f n)) x <-> putnam_2001_b4_solution.
Proof. Admitted.
End putnam_2001_b4.

Section putnam_2010_a4.
Require Import Reals Znumtheory.
Local Open Scope Z.
Theorem putnam_2010_a4 :
    forall (n: Z),
        n > 0 ->
        ~ prime (10^(10^(10^n)) + 10^(10^n) + 10^n - 1). 
Proof. Admitted.
End putnam_2010_a4.

(* Section putnam_2010_a5.
Require Import Reals. From mathcomp Require Import fingroup ssreflect ssrbool eqtype seq choice fintype div path tuple bigop prime finset.
Local Open Scope R.
Variable R3: finGroupType.
Definition cross_product (a b : R -> R -> R) : R -> R -> R := a. 
Theorem putnam_2010_a5:
    forall (G: {group R3}),
        forall (a b: R -> R -> R),
            cross_product a b = a \/ cross_product a b = a ->
            forall (a b: R -> R -> R),
                cross_product a b = a. 
Proof. Admitted.
End putnam_2010_a5. *)

Section putnam_2023_a1.
Require Import Reals List Rtrigo_def Coquelicot.Derive.
Local Open Scope R.
Definition min_sol : nat := 18.
Theorem putnam_2023_a1 :
    forall (n: nat),
        gt n 0 ->
        Rabs (
            (Derive_n 
                (fun x =>
                    let f_i i := cos (INR i * x) in
                    let coeffs := map f_i (seq 1 n) in
                    fold_right Rmult 1 coeffs) 2) 0) > 2023 ->
        (n >= min_sol)%nat /\
        Rabs (
            (Derive_n 
                (fun x =>
                    let f_i i := cos (INR i * x) in
                    let coeffs := map f_i (seq 1 min_sol) in
                    fold_right Rmult 1 coeffs) 2) 0) > 2023. 
Proof. Admitted.
End putnam_2023_a1.

