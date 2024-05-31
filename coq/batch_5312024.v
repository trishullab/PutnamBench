Section putnam_2009_a1.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2009_a1_solution := True.
Theorem putnam_2009_a1: 
    forall (A B C D: R * R) (f: (R * R) -> R), 
    let (Ax, Ay) := A in let (Bx, By) := B in let (Cx, Cy) := C in let (Dx, Dy) := D in
    ((Ax - Bx) ^ 2 + (Ay - By) ^ 2 = (Bx - Cx) ^ 2 + (By - Cy) ^ 2 /\ 
    (Bx - Cx) ^ 2 + (By - Cy) ^ 2 = (Cx - Dx) ^ 2 + (Cy - Dy) ^ 2 /\
    (Cx - Dx) ^ 2 + (Cy - Dy) ^ 2 = (Dx - Ax) ^ 2 + (Dy - Ay) ^ 2 /\
    (Ay - By) * (By - Cy) = - (Ax - Bx) * (Bx - Cx) /\
    (By - Cy) * (Cy - Dy) = - (Bx - Cx) * (Cx - Dx) /\
    (Cy - Dy) * (Dy - Ay) = - (Cx - Dx) * (Dx - Ax) /\
    f A + f B + f C + f D = 0) ->
    forall (P: R * R), f P = 0 <->
    putnam_2009_a1_solution.
Proof. Abort.
End putnam_2009_a1.

Section putnam_2009_a2.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2009_a2_solution : (R -> R) := fun x => Rpower 2 (-1 / 12) * (sin (6 * x + PI / 4) / (cos (6 * x + PI / 4)) ^ 2) ^ (1 / 6).
Theorem putnam_2009_a2: 
    forall (f g h: R -> R), 
    exists (a b: R), a < b /\ 
    forall (x: R), a < x < b -> 
    (ex_derive f x /\ ex_derive g x /\ ex_derive h x /\
    Derive f x = 2 * f (f (g (h x))) + 1 / g (h x) /\ f 0 = 1 /\
    Derive g x = 2 * f (g (g (h x))) + 4 / f (h x) /\ g 0 = 1 /\
    Derive h x = 3 * f (g (h (h x))) + 1 / f (g x) /\ h 0 = 1) ->
    f = putnam_2009_a2_solution.
Proof. Abort.
End putnam_2009_a2.

Section putnam_2009_a4.
Require Import Ensembles QArith.
Definition putnam_2009_a4_solution := False.
Theorem putnam_2009_a4: 
    forall (E: Ensemble Q), 
    (forall (q: Q), 
    E q <-> q = 0 /\ 
    E q -> E (q + 1) /\ E (q - 1) /\
    E q /\ q <> 0 /\ q <> 1 -> E (1 / (q * (q - 1)))) ->
    forall (q: Q), E q <-> putnam_2009_a4_solution.
Proof. Abort.
End putnam_2009_a4.

Section putnam_2009_b1.
Require Import List QArith Znumtheory Reals.
Open Scope Q.
Theorem putnam_2009_b1:
    let fix factl (l : list nat) : list nat :=
        match l with
        | nil => nil
        | h :: t => fact h :: t
    end in 
    forall (q: Q), q > 0 ->
    exists (n d: list nat), (forall x, (In x n \/ In x d)-> prime (Z.of_nat x)) /\ 
    inject_Z (Z.of_nat (fold_left Nat.mul (factl n) 1%nat)) / inject_Z (Z.of_nat (fold_left Nat.mul (factl d) 1%nat)) = q.
Proof. Abort.
End putnam_2009_b1.

Section putnam_2009_b5.
Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2009_b5: 
    forall (f: R -> R) (x: R), (1 < x /\ ex_derive f x /\
    Derive f x = (x ^ 2 - (f x) ^ 2) / (x ^ 2  * ((f x) ^ 2 + 1))) ->
    ~ ex_lim_seq (fun n => f (INR n)).
Proof. Abort.
End putnam_2009_b5.

Section putnam_2009_b6.
Require Import List ZArith Coquelicot.Coquelicot.
Open Scope Z.
Theorem putnam_2009_b6: 
    forall (n: Z), n > 0 ->
    exists (a: list Z), length a = 2009%nat /\ nth 0 a 0 = 0 /\ nth 2008 a 0 = n /\
    forall (i: nat), and (le 1 i) (lt i 2009) -> exists (j: nat), and (le 0 j) (lt j i) /\ ((exists (k: Z), k > 0 /\ nth i a 0 = nth j a 0 + 2 ^ k) \/ exists (b c: Z), b > 0 /\ c > 0 /\ nth i a 0 = b mod c). 
Proof. Abort.
End putnam_2009_b6.

Section putnam_2010_a2.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2010_a2_solution (f: R -> R) := exists (c d: R), f = (fun x => c * x + d).
Theorem putnam_2010_a2: 
    forall (f: R -> R) (x: R) (n: nat), Derive f x = (f (x + (INR n)) - f x) / (INR n) <-> putnam_2010_a2_solution f.
Proof. Abort.
End putnam_2010_a2.

Section putnam_2010_a6.
Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2010_a6: 
    forall (f: R -> R) (x y: R), (x >= 0 /\ x < y -> f x > f y /\ continuity_pt f x /\ Lim_seq (fun n => f (INR n)) = 0) ->
    ~ ex_lim_seq (fun nInc => RInt (fun x => (f x - f (x + 1)) / f x) 0 (INR nInc)).
Proof. Abort.
End putnam_2010_a6.

Section putnam_2010_b1.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2010_b1_solution := False.
Theorem putnam_2010_b1: 
    exists (a: nat -> R), forall (m: nat), gt m 0 ->
    Series (fun i => (a i) ^ m) = (INR m) <-> putnam_2010_b1_solution.
Proof. Abort.
End putnam_2010_b1.

Section putnam_2010_b4.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2010_b4_solution (c1 c2: nat -> R) (n m: nat) := exists (a b c d: R), b * c - a  * d = 1 /\ n = 1%nat /\ m = 1%nat /\ c1 = (fun x => match x with | O => b | S O => a | _ => 0 end) /\ c2 = (fun x => match x with | O => d | S O => c | _ => 0 end).
Theorem putnam_2010_b4: 
    let P (c: nat -> R) (n: nat) (x: R) := sum_n (fun i => c i * x ^ i) (n + 1) in
    forall (c1 c2: nat -> R) (n m: nat) (x: R), 
    (P c1 n x) * (P c2 m (x + 1)) - (P c1 n (x + 1)) * (P c2 m x) = 1 <->
    putnam_2010_b4_solution c1 c2 n m.
Proof. Abort.
End putnam_2010_b4.

Section putnam_2010_b5.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2010_b5_solution := False.
Theorem putnam_2010_b5: 
    exists (f: R -> R), forall (x y: R), x < y -> f x < f y /\ Derive f x = f (f x) <-> putnam_2010_b5_solution.
Proof. Abort.
End putnam_2010_b5.

Section putnam_2011_a2.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2011_a2_solution := 3 / 2.
Theorem putnam_2011_a2:
    let fix prod_n (m: nat -> R) (n : nat) : R :=
        match n with
        | O => m 0%nat
        | S n' => m n' * prod_n m n'
    end in 
    forall (a: nat -> R), 
    let fix b (n: nat) :=
        match n with
        | O => 1
        | S n' => b n' * a n - 2
    end in
    exists (M: nat),
    (forall (n: nat), a n > 0 /\ b n > 0 /\ -1 * INR M <= b n <= INR M) ->
    Series (fun n => prod_n a n) = putnam_2011_a2_solution.
Proof. Abort.
End putnam_2011_a2.

Section putnam_2011_a3.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2011_a3_solution := (-1, 2 / PI).
Theorem putnam_2011_a3: 
    exists (c L: R), L > 0 ->
    Lim_seq (fun r => (Rpower (INR r) c * RInt (fun x => x ^ r * sin x) 0 PI / 2) / (RInt (fun x => x ^ r * cos x) 0 PI / 2)) = L <->
    (c, L) = putnam_2011_a3_solution.
Proof. Abort.
End putnam_2011_a3.

Section putnam_2011_b1.
Require Import Reals ZArith Coquelicot.Coquelicot.
Theorem putnam_2011_b1: 
    forall (h k: Z), Z.gt h 0 /\ Z.gt k 0 ->
    forall (ep: R), ep > 0 /\ exists (m n: Z), ep < Rabs (IZR h * sqrt (IZR m) - IZR k * sqrt (IZR n)) < 2 * ep.
Proof. Abort.
End putnam_2011_b1.

Section putnam_2011_b3.
Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2011_b3_solution := True.
Theorem putnam_2011_b3: 
    forall (f g: R -> R) (a b: R), (a < 0 < b /\ forall (x: R), a < x < b -> g x > 0 /\ continuity_pt g 0 /\
    ex_derive f (g 0) /\ ex_derive (fun x => f x / g x) 0) -> ex_derive f 0 <-> putnam_2011_b3_solution.
Proof. Abort.
End putnam_2011_b3.