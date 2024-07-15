Require Import Ensembles Finite_sets Reals.
Require Import GeoCoq.Main.Tarski_dev.Ch16_coordinates_with_functions.
Context `{T2D:Tarski_2D} `{TE:@Tarski_euclidean Tn TnEQD}.
Definition vect3:= (F * F * F)%type.
Definition cross_prod (v w : vect3) :=  let '(v1, v2, v3) := v in let '(w1, w2, w3) := w in 
   (SubF (MulF v2 w3) (MulF v3 w2),
    SubF (MulF v3 w1) (MulF v1 w3),
    SubF (MulF v1 w2) (MulF v2 w1)).
Definition putnam_2022_b2_solution : Ensemble nat := fun n => n = 1 \/ n = 7.
Theorem putnam_2022_b2
    (p : nat -> Prop := fun n => exists (A: Ensemble vect3), cardinal vect3 A n /\ (A = fun u => exists v w : vect3, In _ A v /\ In _ A w /\ u = cross_prod v w))
    : forall (n: nat), (n > 0 /\ p n) <-> In _ putnam_2022_b2_solution n.
Proof. Admitted. 
