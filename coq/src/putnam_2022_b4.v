Require Import Reals. From mathcomp Require Import fintype seq ssrbool.
Definition putnam_2022_b4_solution := fun x => (x > 9) /\ (x mod 3 = 0).
Open Scope R.
Theorem putnam_2022_b4 
    (p : nat -> Prop := fun n => exists (s: 'I_n -> R),
        ge n 4 ->
        forall (i i0: 'I_n),
        (2 * (s (nth i0 (enum 'I_n) ((i-1) mod n))) = s (nth i0 (enum 'I_n) (i mod n)) + s (nth i0 (enum 'I_n) ((i+1) mod n))) \/
        (2 * (s (nth i0 (enum 'I_n) (i mod n))) = s (nth i0 (enum 'I_n) ((i-1) mod n)) + s (nth i0 (enum 'I_n) ((i+1) mod n))) \/
        (2 * (s (nth i0 (enum 'I_n) ((i+1) mod n))) = s (nth i0 (enum 'I_n) ((i-1) mod n)) + s (nth i0 (enum 'I_n) (i mod n))))
    : forall (n: nat), p n <-> putnam_2022_b4_solution n.
Proof. Admitted.
