Require Import Reals Zpower Coquelicot.Coquelicot.
Definition putnam_2007_a4_solution (f: R -> R) := exists (c d: Z), Z.ge d 0 /\ Z.ge c (1 - d) /\ f = (fun n => (IZR (Zpower 10 c) * IZR (Zpower (9 * floor n + 1) d) - 1) / 9).
Theorem putnam_2007_a4
    (repunit : R -> Prop := fun n => n = IZR (floor n) /\ n > 0 /\ exists (m: nat), n = sum_n (fun i => 10 ^ i) m)
    (c: nat -> R)
    (n: nat)
    (f : R -> R := fun x => sum_n (fun i => c i * x ^ i) (n + 1))
    : repunit (INR n) -> repunit (f (INR n)) <-> putnam_2007_a4_solution f.
Proof. Admitted.
