(* Note: The MAA archive contains an error on this problem; the second term in the sum of the second limit should read "a2", not "a4". *)
Require Import Reals Coquelicot.Complex Coquelicot.Hierarchy.
Theorem putnam_1965_a3
    (a : nat -> R)
    (alpha : C)
    (euler : R -> C := (fun x : R => Cplus (cos x) (Cmult Ci (sin x))))
    : (filterlim (fun n : nat => Cdiv (sum_n (fun k : nat => euler (a k)) (n - 1)) (INR n)) eventually (locally alpha)) <-> (filterlim (fun n : nat => Cdiv (sum_n (fun k : nat => euler (a k)) (n ^ 2 - 1)) (INR (n ^ 2))) eventually (locally alpha)).
Proof. Admitted.
