Section putnam_1973_a3.
Require Import Reals ZArith Coquelicot.Coquelicot.
Theorem putnam_1973_a3
    (b : Z -> R)
    (hbminle : forall n : Z, Z.gt n 0 -> (forall k : Z, Z.gt k 0 -> b n <= (IZR k + (IZR n)/(IZR k))%R ))
    (hbmineq : forall n : Z, Z.gt n 0 -> exists k : Z, Z.gt k 0 /\ b n = (IZR k + (IZR n)/(IZR k)))
    : forall n : Z, Z.gt n 0 -> (floor (b n) = floor (sqrt (4 * (IZR n) + 1))).
Proof. Admitted.
End putnam_1973_a3.

Section putnam_1973_a4.
Require Import Reals Coquelicot.Coquelicot Ensembles Finite_sets.
Definition putnam_1973_a4_solution : nat := 3.
Theorem putnam_1973_a4
    (f : R -> R := fun x => (Rpower 2 x - 1 - x^2))
    : let zeroset (x : R) : Prop := f x = 0 in 
        cardinal R zeroset putnam_1973_a4_solution.
Proof. Admitted.
End putnam_1973_a4.

Section putnam_1973_b1.
Require Import Basics Nat Reals Ensembles Finite_sets Coquelicot.Coquelicot. From mathcomp Require Import fintype.
Theorem putnam_1973_b1
    (n : nat)
    (a : nat -> Z)
    (U : Ensemble nat)
    (hU : cardinal _ U (2 * n + 1))
    (hpres : Ensemble nat -> nat -> bool := fun E x => match (E x) with | True => true end)
    (h_remove : forall S : Ensemble nat, (Included _ S U /\ cardinal _ S  (2 * n)) 
        -> exists T : Ensemble nat, 
            cardinal _ T n /\ Included _ T S /\ sum_n (fun i => if (hpres T i) then IZR (a i) else 0) (2 * n + 1) = sum_n (fun i => if (andb (hpres S i) (negb (hpres T i))) then IZR (a i) else 0) (2 * n + 1)
    )
    : forall i j : 'I_(2*n+1), a i = a j.
Proof. Admitted.
End putnam_1973_b1.

Section putnam_1973_b2.
Require Import Reals QArith Coquelicot.Complex. From Coqtail Require Import Cpow.
Theorem putnam_1973_b2
    (z : C)
    (hzrat : exists q1 q2 : Q, Re z = Q2R q1 /\ Im z = Q2R q2)
    (hznorm : Cmod z = 1%R)
    : forall n : nat, exists q1 q2 : Q, Cmod (Cpow z (2 * n) - 1) = Q2R q1 /\ Cmod (1 / (Cpow z (2 * n) - 1)) = Q2R q2.
Proof. Admitted.
End putnam_1973_b2.

Section putnam_1973_b3.
Require Import Nat ZArith Znumtheory. 
Theorem putnam_1973_b3
    (p : nat)
    (hp : gt p 1)
    (hprime : forall x : Z, 0 <= x < Z.of_nat p -> prime (x^2 - x + Z.of_nat p))
    : exists! triple : Z * Z * Z, 
        let '(a, b, c) := triple in 
            (b^2 - 4*a*c = 1 /\ 0 < a /\ a <= c /\ -a <= b /\ b < a).
Proof. Admitted.    
End putnam_1973_b3.

Section putnam_1973_b4.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1973_b4_solution : R -> R := fun x => x.
Theorem putnam_1973_b4
    (f : R -> R)
    (hprop : (R -> R) -> Prop := fun g => (forall x : R, ex_derive g x) /\ continuity (Derive_n g 1) /\ (forall x : R, 0 <= x <= 1 -> (0 < Derive_n g 1 x <= 1)) /\ g 0 = 0)
    (hf : hprop f)
    : (RInt f 0 1)^2 >= RInt (fun x => (f x)^3) 0 1 /\ (hprop putnam_1973_b4_solution /\ (RInt putnam_1973_b4_solution 0 1)^2 = RInt (fun x => (putnam_1973_b4_solution x)^3) 0 1).
Proof. Admitted.
End putnam_1973_b4.

Section putnam_1971_a1.
Require Import Reals Ensembles Finite_sets Coquelicot.Coquelicot.
Theorem putnam_1971_a1
    (S : Ensemble (Z * Z * Z))
    (hS : cardinal _ S 9)
    (L : (Z * Z * Z) * (Z * Z * Z) -> Ensemble (R * R * R)
       := fun '((a,b,c), (d,e,f)) => fun (x : R * R * R) => (exists t : R, 0 < t < 1 /\ x = (t * (IZR a) + (1 - t) * (IZR d), t * (IZR b) + (1 - t) * (IZR e), t * (IZR c) + (1 - t) * (IZR f))))
    : exists x y z : Z, exists P Q : Z * Z * Z, In _ S P /\ In _ S Q /\ P <> Q /\ In _ (L (P,Q)) (IZR x, IZR y, IZR z).
Proof. Admitted.
End putnam_1971_a1.

Section putnam_1971_a2.
Require Import Reals Ensembles Finite_sets Coquelicot.Coquelicot. From mathcomp Require Import fintype ssralg ssrnat ssrnum poly.
Definition putnam_1971_a2_solution : Ensemble (R -> R) := fun f : R -> R => forall x : R, f x = x.
Theorem putnam_1971_a2
    (is_poly : (R -> R) -> Prop := fun f => exists (k : nat) (coeff : nat -> R), forall x : R, sum_n (fun i => (coeff i) * (x^i)) k = f x) 
    : forall P : R -> R, (is_poly P /\ (P (INR 0) = (INR 0) /\ (forall x : R, P (Rpower x 2 + (INR 1)) = Rpower (P x) 2 + (INR 1))) <-> (exists f : R -> R, In _ putnam_1971_a2_solution f /\ (forall x : R, P x = f x))).
Proof. Admitted.
End putnam_1971_a2.

Section putnam_1971_a3. 
Require Import Reals ZArith Coquelicot.Coquelicot.
Theorem putnam_1971_a3
    (a b c : Z * Z)
    (r : R)
    (habcneq : a <> b /\ b <> c /\ c <> a)
    (hR : r > 0)
    (oncircle : (R * R) -> R -> (R * R) -> Prop := fun C rad p => (fst C - fst p)^2 + (snd C - snd p)^2 = rad^2)
    (hcircle : exists C : R * R, oncircle (IZR (fst a), IZR (snd a)) r C /\ oncircle (IZR (fst b), IZR (snd b)) r C /\ oncircle (IZR (fst c), IZR (snd c)) r C)
    : (norm (2,2) * sqrt (IZR ((fst a - fst b)^2 + (snd a - snd b)^2)) * sqrt (IZR ((fst b - fst c)^2 + (snd b - snd c)^2)) * sqrt (IZR ((fst c - fst a)^2 + (snd c - snd a)^2))) >= 2 * r.  
Proof. Admitted.
End putnam_1971_a3.

Section putnam_1971_a4.
Require Import Nat Reals Coquelicot.Coquelicot.
Theorem putnam_1971_a4
    (epsilon : R)
    (hepsilon : 0 < epsilon < 1)
    (P : nat -> (R * R) -> R := fun n '(x, y) => (x + y)^n * (x^2 - (2 - epsilon)*x*y + y^2))
    : exists N : nat, forall n : nat, ge n N -> (exists (k : nat) (coeff : (nat * nat) -> R), 
        (forall i : nat * nat, coeff i >= 0) /\ (forall x : R * R, P n x = sum_n (fun i => sum_n (fun j => (coeff (i,j)) * (fst x)^i * (snd x)^j) k) k)).
Proof. Admitted.
End putnam_1971_a4.

Section putnam_1971_a6.
Require Import Reals ZArith.
Theorem putnam_1971_a6
    (c : R)
    (hc : forall n : Z, Z.gt n 0 -> exists m : Z, Rpower (IZR n) c = IZR m)
    : exists m : Z, Z.ge m 0 /\ c = IZR m.
Proof. Admitted.
End putnam_1971_a6.

Section putnam_1971_b1.
Require Import Ensembles RelationClasses.
Theorem putnam_1971_b1
    (S : Type)
    (op : S -> S -> S)
    (hself : forall x : S, op x x = x)
    (h2 : forall x y z : S, op (op x y) z = op (op y z) x)
    : (forall x y z : S, op (op x y) z = op x (op y z)) /\ (forall x y : S, op x y = op y x).
Proof. Admitted.
End putnam_1971_b1.

Section putnam_1971_b2.
Require Import Reals Ensembles Coquelicot.Coquelicot.
Definition putnam_1971_b2_solution : Ensemble (R -> R) := fun f => (f = fun x : R => (x^3 - x^2 - 1)/(2 * x * (x-1))).
Theorem putnam_1971_b2
    (S : Ensemble R := fun x => x <> 0 /\ x <> 1)
    (P : (R -> R) -> Prop := fun F => forall x : R, In _ S x -> F x + F ((x-1)/x) = 1 + x)
    : (forall F : R -> R, In _ putnam_1971_b2_solution F -> P F) /\ (forall f : R -> R, P f -> (exists F : R -> R, In _ putnam_1971_b2_solution F /\ (forall x : R, In _ S x -> f x = F x))).
Proof. Admitted.
End putnam_1971_b2.

Section putnam_1971_b6.
Require Import ZArith Nat Reals Coquelicot.Coquelicot.
Theorem putnam_1971_b6
    (delta : Z -> Z)
    (hdeltagt : forall n : Z, Z.gt n 0 -> forall t : Z, (Z.divide t n /\ Z.odd t = true) -> Z.ge (delta n) t)
    (hdeltamax : forall n : Z, Z.gt n 0 -> exists t : Z, Z.divide t n /\ Z.odd t = true /\ delta n = t)
    : forall x : Z, Z.gt x 0 -> sum_n_m (fun n => (IZR (delta (Z.of_nat n))) / (INR n) - 2 * (IZR x) / (IZR 3)) 1 (Z.to_nat x) < 1.
Proof. Admitted.
End putnam_1971_b6.

Section putnam_1966_a1.
Require Import Reals Nat ZArith Coquelicot.Coquelicot.
Theorem putnam_1966_a1
    (f : nat -> R := fun n => (sum_n (fun m => (if (even m) then INR m else INR (m-1)) : R) n) / 2)
    : forall x y : nat, ge x y -> INR x * INR y = f (add x y) - f (sub x y).
Proof. Admitted.
End putnam_1966_a1.

Section putnam_1966_a3.
Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_1966_a3
    (x : nat -> R)
    (hx1 : 0 < (x (S O)) < 1)
    (hxi : forall n : nat, ge n 1 -> x (S n) = (x n) * (1 - (x n)))
    : filterlim (fun n : nat => (INR n) * (x n)) eventually (locally 1).
Proof. Admitted.
End putnam_1966_a3.

Section putnam_1966_a4.
Require Import Nat List ZArith Reals Coquelicot.Coquelicot.
Theorem putnam_1966_a4
    (a : nat -> Z)
    (ha1 : a (S 0) = 2%Z)
    (ha2 : forall n : nat, ge n 1 -> a (S n) = (if (existsb (fun m => Z.eqb (a n + 1) (m * m)) (map Z.of_nat (seq 0 (Z.to_nat (Z.abs (a n) + 1))))) then (Z.add (a n) 2) else Z.add (a n) 1))
    : forall n : nat, ge n 1 -> a n = Z.add (Z.of_nat n) (floor (sqrt (INR n) + 0.5)).
Proof. Admitted.
End putnam_1966_a4.

Section putnam_1966_a5.
Require Import Reals Coquelicot.Coquelicot Ensembles.
Theorem putnam_1966_a5
    (C : Ensemble (R -> R) := fun f => continuity f)
    (T : (R -> R) -> (R -> R))
    (imageTC : forall f : R -> R, In _ C f -> In _ C (T f))
    (linearT : forall a b : R, forall f g : R -> R, In _ C f -> In _ C g -> T (fun x : R => a * f x + b * g x) = (fun x => a * T f x + b * T g x))
    (localT : forall r s : R, r <= s -> forall f g : R -> R, In _ C f -> In _ C g -> (forall x : R, r <= x <= s -> f x = g x) -> (forall x : R, r <= x <= s -> T f x = T g x))
    : exists f : R -> R, In _ C f /\ (forall g : R -> R, In _ C g -> T g = fun x => f x * g x).
Proof. Admitted.
End putnam_1966_a5.

Section putnam_1966_a6.
Require Import Nat Reals Coquelicot.Coquelicot.
Theorem putnam_1966_a6
    (a : nat -> (nat -> R))
    (ha : forall n : nat, ge n 1 -> a n n = INR n /\ (forall m : nat, ge m 1 -> lt m n -> a n m = (INR m) * sqrt (1 + a n (S m))))
    : filterlim (fun n => a n (S 0)) eventually (locally 3).
Proof. Admitted.
End putnam_1966_a6.

Section putnam_1966_b2.
Require Import ZArith Znumtheory Ensembles.
Theorem putnam_1966_b2
    (S : Z -> Ensemble Z := fun n : Z => fun x : Z => Z.le n x /\ Z.le x (n + 9))
    : forall n : Z, Z.gt n 0 -> (exists k : Z, In _ (S n) k /\ (forall m : Z, In _ (S n) m -> k <> m -> Zis_gcd k m 1)).
Proof. Admitted.
End putnam_1966_b2.

Section putnam_1966_b3.
Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_1966_b3
    (p : nat -> R)
    (hpos : forall n : nat, p n > 0)
    (hconv : exists r : R, filterlim (fun m : nat => sum_n (fun n => 1 / (p n)) m) eventually (locally r))
    : exists r : R, filterlim (fun m : nat => sum_n (fun n => (p n) * (INR n)^2/(sum_n (fun k => p k) n)^2) m) eventually (locally r).
Proof. Admitted.
End putnam_1966_b3.

Section putnam_1966_b4.
Require Import Nat Ensembles Finite_sets ZArith. From mathcomp Require Import fintype.
Theorem putnam_1966_b4
    (m n : nat)
    (S : Ensemble nat)
    (hScard : cardinal _ S (m * n + 1))
    (hSpos : forall i : nat, In _ S i -> i > 0)
    : (exists T : 'I_(m+1) -> nat, (forall i : 'I_(m+1), In _ S (T i)) /\ (forall i j : 'I_(m+1), i <> j -> T i <> T j) /\ (forall i j : 'I_(m+1), i <> j -> ~(Nat.divide (T i) (T j))))
      \/ (exists T : 'I_(n+1) -> nat,  (forall i : 'I_(n+1), In _ S (T i)) /\ (forall i j : 'I_(n+1), i <> j -> T i <> T j) /\ (forall i j : 'I_(n+1), i < j -> (Nat.divide (T i) (T j)))).
Proof. Admitted.
End putnam_1966_b4.

Section putnam_1966_b6.
Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_1966_b6
    (y : R -> R)
    (hy : (forall x : R, ex_derive y x) /\ (forall x : R, ex_derive (Derive y) x))
    (diffeq : forall x : R, Derive_n y 2 x + y x * exp x = 0)
    : exists r s N : R, forall x : R, x > N -> r <= y x <= s.
Proof. Admitted.
End putnam_1966_b6.

Section putnam_1995_a1.
Require Import Reals Ensembles Coquelicot.Coquelicot.
Theorem putnam_1995_a1
    (S T U : Ensemble R)
    (hS : forall a : R, forall b : R, In _ S a /\ In _ S b -> In _ S (a * b))
    (hsub : Included _ T S /\ Included _ U S)
    (hunion : Same_set _ (Union _ T U) S)
    (hdisj : Disjoint _ T U)
    (hT3 : forall a b c : R, In _ T a /\ In _ T b /\ In _ T c -> In _ T (a * b * c))
    (hS3 : forall a b c : R, In _ S a /\ In _ S b /\ In _ S c -> In _ S (a * b * c))
    : (forall a b : R, In _ T a /\ In _ T b -> In _ T (a * b)) \/ (forall a b : R, In _ U a /\ In _ U b -> In _ U (a * b)).
Proof. Admitted.
End putnam_1995_a1.

Section putnam_1995_a4.
Require Import Reals ZArith Coquelicot.Coquelicot.
Theorem putnam_1995_a4
    (n : nat)
    (hn : gt n 0)
    (necklace : nat -> R)
    (hnecklaceint : forall i : nat, exists k : Z, necklace i = IZR k)
    (hnecklacesum : sum_n necklace n = INR n - 1)
    : exists cut : nat, le cut (n-1) /\ (forall k : nat, le k (n-1) -> (sum_n (fun i => necklace ((cut + i) mod n)) k) <= INR k).
Proof. Admitted.
End putnam_1995_a4.

Section putnam_1995_a5.
Require Import Nat Reals Coquelicot.Coquelicot. From mathcomp Require Import fintype.
Definition putnam_1995_a5_solution : Prop := True.
Theorem putnam_1995_a5
    (hdiffx := fun (n : nat) (x : nat -> (R -> R)) => forall (i : nat) (t : R), ge i 0 /\ le i (Nat.sub n 1) -> ex_derive (x i) t)
    (ha := fun (n : nat) (a : nat -> nat -> R) => forall i j : nat, ge i 0 /\ le i (Nat.sub n 1) -> a i j > 0)
    (hcomb := fun (n : nat) (x : nat -> (R -> R)) (a : nat -> nat -> R) => (forall t : R, forall i : nat, ge i 0 /\ le i (Nat.sub n 1) -> Derive (x i) t = sum_n (fun j => a i j * ((x j) t)) n))
    (hxlim := fun (n : nat) (x : nat -> (R -> R)) =>  (forall i : nat, (ge i 0 /\ le i (Nat.sub n 1)) -> filterlim (x i) (Rbar_locally p_infty) (locally 0)))
    : putnam_1995_a5_solution <-> (forall (n : nat) (x : nat -> (R -> R)) (a : nat -> nat -> R), (ge n 0 /\ hdiffx n x /\ ha n a /\ hcomb n x a /\ hxlim n x) -> ~(forall b : nat -> R, (forall t : R, 0 = sum_n (fun i => (b i) * ((x i) t)) (Nat.sub n 1)) -> (forall i : nat, (ge i 0 /\ le i (Nat.sub n 1)) -> b i = 0) )).
Proof. Admitted.
End putnam_1995_a5.

Section putnam_1995_b6.
Require Import Reals Ensembles Coquelicot.Coquelicot.
Theorem putnam_1995_b6
    (S : R -> Ensemble nat := fun alpha => (fun x : nat => exists n : nat, ge n 1 /\ INR x = IZR (floor ((INR n) * alpha))))
    : ~ exists alpha beta gamma : R, alpha > 0 /\ beta > 0 /\ gamma > 0 /\ (Disjoint _ (S alpha) (S beta) /\ Disjoint _ (S beta) (S gamma) /\ Disjoint _ (S gamma) (S alpha)) /\ (~ Same_set _ (fun x : nat => ge x 1) (Union _ (Union _ (S alpha) (S beta)) (S gamma))).
Proof. Admitted.
End putnam_1995_b6.

Section putnam_1996_a3.
Require Import Nat Ensembles Finite_sets. From mathcomp Require Import fintype.
Definition putnam_1996_a3_solution : Prop := False.
Theorem putnam_1996_a3
    (student_choices : nat -> Ensemble nat)
    (hinrange : forall n : nat, Included _ (student_choices n) (fun i : nat => le 1 i /\ le i 6))
    : putnam_1996_a3_solution <-> (exists S : Ensemble nat, Included _ S (fun i : nat => le 1 i /\ le i 20) /\ cardinal _ S 5 /\ 
        (exists c1 c2 : nat, Included _ (fun i : nat => i = c1 \/ i = c2) (fun i : nat => le 1 i /\ le i 6) /\ 
        (Included _ (fun i : nat => i = c1 \/ i = c2) (fun i : nat => (forall s : nat, In _ S s -> In _ (student_choices s) i)
        \/ Included _ (fun i : nat => i = c1 \/ i = c2) (fun i : nat => forall s : nat, In _ S s -> ~ (In _ (student_choices s) i)))))).
Proof. Admitted.
End putnam_1996_a3.

Section putnam_1996_a4.
Require Import Basics FinFun Reals Ensembles Finite_sets. From mathcomp Require Import fintype.
Local Open Scope R_scope.
Theorem putnam_1996_a4
    (A : finType)
    (S : Ensemble (A * A * A))
    (hSdistinct: forall a b c : A, In _ S (a, b, c) -> a <> b /\ b <> c /\ c <> a)
    (hS1 : forall a b c : A, In _ S (a, b, c) -> In _ S (b, c, a))
    (hS2 : forall a b c : A, In _ S (a, b, c) -> ~ (In _ S (c, b, a)))
    (hS3 : forall a b c d : A, (In _ S (a, b, c)) /\ (In _ S (c, d, a)) <-> (In _ S (b, c, d) /\ In _ S (d, a, b)))
    : exists g : A -> R, Injective g /\ (forall a b c : A, g a < g b /\ g b < g c -> In _ S (a, b, c)).
Proof. Admitted.
End putnam_1996_a4.

(* Note: This formalization is only a statement finite groups (due to mathcomp), but the idea ot the problem does not rely on the cardinal of the group, so we include it*)
Section putnam_1997_a4.
Require Import Basics. From mathcomp Require Import fingroup.
Open Scope group_scope.
Variable T : finGroupType.
Theorem putnam_1997_a4
    (G : {group T})
    (f : T -> T)
    (hf : forall g1 g2 g3 h1 h2 h3 : T, ((g1 * g2 * g3) = 1 /\ (h1 * h2 * h3) = 1) -> (f g1 * f g2 * f g3 = f h1 * f h2 * f h3))
    : exists a : T, let psi := fun g => a * f g in (forall x y : T, psi (x * y) = psi x * psi y).
Proof. Admitted.
End putnam_1997_a4.

Section putnam_1997_b4.
Require Import Nat Reals Coquelicot.Coquelicot ZArith.
Theorem putnam_1997_b4
    (a : nat -> nat -> Z)
    (max_degree : nat -> nat)
    (coeff : nat -> (nat -> R))
    (hpoly : forall (m : nat) (x : R), sum_n (fun i => (coeff m i) * (x^i)) (max_degree m) = (1 + x + x^2)^m)
    (ha : forall n m : nat, IZR (a n m) = coeff m n)
    : forall k : nat, ge k 0 -> 0 <= (sum_n (fun i => (-1)^i * (IZR (a (Nat.sub k i) i))) (Z.to_nat (Coquelicot.Rcomplements.floor (2 * INR k / 3)))) <= 1.
Proof. Admitted.
End putnam_1997_b4.

Section putnam_1999_a3.
Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_1999_a3
    (f : R -> R := fun x => 1/(1- 2 * x - x^2))
    (a : nat -> R)
    (hf : exists epsilon : R, epsilon > 0 /\ (forall x : R, 0 < Rabs (x) < epsilon -> filterlim (fun n : nat => sum_n (fun i => a i * x^i) n) eventually (locally (f x))))
    : forall n : nat, ge n 0 -> (exists m : nat, (a n)^2 + (a (S n))^2 = a m).
Proof. Admitted.
End putnam_1999_a3.


Section putnam_2000_a6.
Require Import ZArith Reals Coquelicot.Coquelicot.
Theorem putnam_2000_a6
    (n : nat)
    (coeff : nat -> Z)
    (f : R -> R := fun x => sum_n (fun i => (IZR (coeff i)) * (x^i)) n)
    (a : nat -> R)
    (ha : a O = 0 /\ forall i : nat, a (S n) = f (a n))
    : (exists m : nat, gt m 0 /\ a m = 0) -> (a (S O) = 0 \/ a (S (S O)) = 0).
Proof. Admitted.
End putnam_2000_a6.

Section putnam_2000_b5.
Require Import ZArith Ensembles Finite_sets.
Theorem putnam_2000_b5
    (S : nat -> Ensemble Z)
    (hSfin : forall n : nat, exists m : nat, cardinal _ (S n) m)
    (hSpos : forall n : nat, forall s : Z, In _ (S n) s -> Z.gt s 0)
    (hSdef : forall n : nat, forall a : Z, (In _ (S (n + 1)) a) <-> ((In _ (S n) (Z.sub a 1) /\ ~ (In _ (S n) a)) \/ (In _ (S n) a /\ ~ (In _ (S n) (Z.sub a 1)))))
    : forall n : nat, exists N : nat, N >= n /\ Same_set _ (S N) (Union _ (S 0) (fun i : Z => exists a : Z, In _ (S 0) a /\ i = Z.add a (Z.of_nat N))).
Proof. Admitted.
End putnam_2000_b5.

Section putnam_1993_b5.
Require Import ZArith Reals Coquelicot.Coquelicot. From mathcomp Require Import fintype.
Theorem putnam_1993_b5
    (pdists : ('I_4 -> (R * R)) -> Prop)
    (hpdists : forall p : 'I_4 -> (R * R), pdists p = (forall i j : 'I_4, i <> j -> (exists k : Z, IZR k = norm (fst (p i) - fst (p j), (snd (p i) - snd (p j))) /\ Z.odd k = true)))
    : ~ (exists p : 'I_4 -> (R * R), pdists p).
Proof. Admitted.
End putnam_1993_b5.

Section putnam_1988_a4.
Require Import Reals Coquelicot.Coquelicot. From mathcomp Require Import fintype.
Definition putnam_1988_a4_solution : Prop * Prop := (True, False).
Theorem putnam_1988_a4
    (p : nat -> Prop := fun n : nat =>  (forall color : (R * R) -> 'I_n, exists p q : R * R, color p = color q /\ norm (fst p - fst q, snd p - snd q) = 1))
    : let (a, b) := putnam_1988_a4_solution in ((p 3%nat) <-> a) /\ ((p 9%nat) <-> b).
Proof. Admitted.
End putnam_1988_a4.
