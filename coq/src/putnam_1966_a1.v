From mathcomp Require Import all_ssreflect ssrnum ssralg ssrint.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Theorem putnam_1966_a1
    (f : nat -> int := fun n => \sum_(0 <= m < n + 1) (if (~~odd m) then (m%:Z)/2 else (m%:Z-1)/2))
    : forall x y : nat, (gt x 0) -> (gt y 0) -> gt x y -> (x * y)%:Z = f (Nat.add x y) - f (Nat.sub x y).
Proof. Admitted.