From mathcomp Require Import ssrbool seq ssrnat prime rat ssralg ssrnum ssrint.

Local Open Scope ring_scope.

Theorem putnam_2009_b1 :
  let fact_prod (ls : seq nat) : rat := \prod_(i <- ls) (i`!)%:Q in
  forall q : rat, q > 0 -> exists n d : seq nat,
  all prime (n ++ d) /\ fact_prod n / fact_prod d = q.
Proof. Admitted.