Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1979_a3_solution (x y: R) := x = IZR (floor x) /\ y = IZR (floor y).
Theorem putnam_1979_a3
    (A := fix a (x y: R) (n: nat) := 
        match n with
        | O => x
        | S O => y
        | S ((S n'') as n') => (a x y n'' * a x y n') / (2 * a x y n'' - a x y n')
    end)
    : forall (n: nat), exists (x y: R), (A x y n+1 <> 2 * A x y n) /\ 
    (~ exists (r: R), A x y n = IZR (floor (A x y n)) /\ INR n < r)
    <-> putnam_1979_a3_solution x y.
Proof. Admitted.
