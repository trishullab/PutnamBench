(* Batch 51:
Putnam 1965 A2 A3 A4 A5 A6 B2 B3 B4 B5 B6 *)

Section putnam_1965_a2.
Require Import Coquelicot.Hierarchy Reals.
Theorem putnam_1965_a2
    : forall n : nat, gt n 0 -> sum_n (fun r : nat => ((INR n - 2 * INR r) * (C n r) / INR n) ^ 2) ((n - 1) / 2) = (C (2 * n - 2) (n - 1)) / INR n.
Proof. Admitted.
End putnam_1965_a2.

(* Note: The MAA archive contains an error on this problem; the second term in the sum of the second limit should read "a2", not "a4". *)
Section putnam_1965_a3.
Require Import Reals Coquelicot.Complex Coquelicot.Hierarchy.
Theorem putnam_1965_a3
    (a : nat -> R)
    (alpha : C)
    (euler : R -> C := (fun x : R => Cplus (cos x) (Cmult Ci (sin x))))
    : (filterlim (fun n : nat => Cdiv (sum_n (fun k : nat => euler (a k)) (n - 1)) (INR n)) eventually (locally alpha)) <-> (filterlim (fun n : nat => Cdiv (sum_n (fun k : nat => euler (a k)) (n ^ 2 - 1)) (INR (n ^ 2))) eventually (locally alpha)).
Proof. Admitted.
End putnam_1965_a3.

Section putnam_1965_a4.
Require Import Bool ssreflect ssrfun. From mathcomp Require Import fintype.
Variables G B : finType.
Theorem putnam_1965_a4
    (dances : G -> B -> Prop)
    (h : ~(exists b : B, forall g : G, dances g b) /\ (forall g : G, exists b : B, dances g b))
    (nonempty : (exists g : G, True) /\ (exists b : B, True))
    : exists (g h : G) (b c : B), dances g b /\ dances h c /\ ~dances h b /\ ~dances g c.
Proof. Admitted.
End putnam_1965_a4.

Section putnam_1965_a5.
Require Import Nat Finite_sets. From mathcomp Require Import fintype perm.
Definition putnam_1965_a5_solution : nat -> nat := (fun n : nat => 2 ^ (n - 1)).
Theorem putnam_1965_a5
    : forall n : nat, n > 0 -> cardinal {perm 'I_n} (fun p : {perm 'I_n} => forall m : 'I_n, m > 0 -> exists k : 'I_n, k < m /\ (nat_of_ord (p m) = (p k) + 1 \/ nat_of_ord (p m) = (p k) - 1)) (putnam_1965_a5_solution n).
Proof. Admitted.
End putnam_1965_a5.

Section putnam_1965_a6.
Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_1965_a6
    (u v m : R)
    (pinter : (R * R) -> Prop := (fun p : R * R => u * (fst p) + v * (snd p) = 1 /\ (Rpower (fst p) m) + (Rpower (snd p) m) = 1))
    (hm : m > 1)
    (huv : u >= 0 /\ v >= 0)
    : ((exists! p : R * R, pinter p) /\ (exists p : R * R, fst p >= 0 /\ snd p >= 0 /\ pinter p)) <-> (exists n : R, (Rpower u n) + (Rpower v n) = 1 /\ powerRZ m (-1) + powerRZ n (-1) = 1).
Proof. Admitted.
End putnam_1965_a6.

Section putnam_1965_b2.
Require Import Coquelicot.Hierarchy Reals. From mathcomp Require Import fintype.
Theorem putnam_1965_b2
    (n : nat)
    (won : 'I_n -> 'I_n -> bool)
    (ordofnat : nat -> 'I_n)
    (w : 'I_n -> R := (fun r : 'I_n => sum_n (fun j : nat => if (won r (ordofnat j)) then 1 else 0) (n - 1)))
    (l : 'I_n -> R := (fun r : 'I_n => INR n - 1 - w r))
    (hn : gt n 1)
    (hirrefl : forall i : 'I_n, won i i = false)
    (hantisymm : forall i j : 'I_n, i <> j -> won i j = negb (won j i))
    (hordofnat : forall i : 'I_n, ordofnat (nat_of_ord i) = i)
    : sum_n (fun r : nat => (w (ordofnat r)) ^ 2) (n - 1) = sum_n (fun r : nat => (l (ordofnat r)) ^ 2) (n - 1).
Proof. Admitted.
End putnam_1965_b2.

Section putnam_1965_b3.
Require Import Finite_sets Reals Coquelicot.Coquelicot.
Theorem putnam_1965_b3
    : cardinal (R * R * R) (fun abc : R * R * R => let '(a, b, c) := abc in (IZR (floor a) = a /\ IZR (floor b) = b /\ IZR (floor c) = c /\ a > 0 /\ a <= b /\ c > 0 /\ a ^ 2 + b ^ 2 = c ^ 2 /\ a * b / 2 = 2 * (a + b + c))) 3.
Proof. Admitted.
End putnam_1965_b3.

Section putnam_1965_b4.
Require Import Reals Coquelicot.Hierarchy Ensembles.
Definition putnam_1965_b4_solution : (((R -> R) -> R -> R) * ((R -> R) -> R -> R)) * ((Ensemble R) * (R -> R)) := (((fun (h : R -> R) (x : R) => h x + x), (fun (h : R -> R) (x : R) => h x + 1)), ((fun x : R => x >= 0), sqrt)).
Theorem putnam_1965_b4
    (f : nat -> R -> R)
    (hf : forall n : nat, gt n 0 -> f n = (fun x : R => (sum_n (fun i : nat => (C n (2 * i)) * x ^ i) (n / 2)) / (sum_n (fun i : nat => (C n (2 * i + 1)) * x ^ i) ((n - 1) / 2))))
    : let '((p, q), (s, g)) := putnam_1965_b4_solution in (forall n : nat, gt n 0 -> f (Nat.add n 1) = (fun x : R => p (f n) x / q (f n) x) /\ s = (fun x : R => exists L : R, filterlim (fun n : nat => f n x) eventually (locally L)) /\ (forall x : R, s x -> filterlim (fun n : nat => f n x) eventually (locally (g x)))).
Proof. Admitted.
End putnam_1965_b4.

Section putnam_1965_b5.
Require Import Ensembles Finite_sets. From mathcomp Require Import fintype.
Theorem putnam_1965_b5
    (E V : nat)
    (simple : (Ensemble ('I_V * 'I_V)) -> Prop := (fun G : Ensemble ('I_V * 'I_V) => (forall v : 'I_V, ~G (v, v)) /\ (forall v w : 'I_V, G (v, w) -> G (w, v))))
    (hE : 4 * E <= Nat.pow V 2)
    : exists G : Ensemble ('I_V * 'I_V), simple G /\ cardinal ('I_V * 'I_V) G (2 * E) /\ ~(exists a b c : 'I_V, G (a, b) /\ G (a, c) /\ G (b, c)).
Proof. Admitted.
End putnam_1965_b5.

Section putnam_1965_b6.
Require Import GeoCoq.Main.Tarski_dev.Ch16_coordinates_with_functions Ensembles.
Context `{Tarski_2D}.
Theorem putnam_1965_b6
    (A B C D : Tpoint)
    (hABCD : forall R SS P Q : Tpoint, (R <> P /\ SS <> Q /\ OnCircle A P R /\ OnCircle B P R /\ OnCircle C Q SS /\ OnCircle D Q SS) -> (exists I : Tpoint, OnCircle I P R /\ OnCircle I Q SS))
    : (Col A B C /\ Col A B D) \/ (exists R P : Tpoint, R <> P /\ OnCircle A P R /\ OnCircle B P R /\ OnCircle C P R /\ OnCircle D P R).
Proof. Admitted.
End putnam_1965_b6.
