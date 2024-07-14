Require Import Reals ZArith.
Open Scope R.
Definition putnam_1967_a3_solution : Z := 5.
Theorem putnam_1967_a3
    (pform : (R -> R) -> Z -> Prop := fun p a => exists b c : Z, p = fun x => IZR a * x ^ 2 - IZR b * x + IZR c)
    (pzeros : (R -> R) -> Prop := fun p => exists z1 z2 : R, 0 < z1 /\ z1 < z2 /\ z2 < 1 /\ p z1 = 0 /\ p z2 = 0)
    (pall : (R -> R) -> Z -> Prop := fun p a => pform p a /\ pzeros p)
    : ((exists p : R -> R, pall p (putnam_1967_a3_solution)) /\ (forall a : Z, (0 < a < putnam_1967_a3_solution)%Z -> ~exists p : R -> R, pall p a)).
Proof. Admitted.