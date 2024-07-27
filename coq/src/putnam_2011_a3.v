Require Import Reals Coquelicot.Coquelicot.
(* Note: There may be multiple possible correct answers. *)
Definition putnam_2011_a3_solution := (-1, 2 / PI).
Theorem putnam_2011_a3
    : let (c, L) := putnam_2011_a3_solution in L > 0 /\ is_lim_seq (fun r => (Rpower (INR r) c * RInt (fun x => x ^ r * sin x) 0 (PI / 2)) / (RInt (fun x => x ^ r * cos x) 0 (PI / 2))) L.
Proof. Admitted.
