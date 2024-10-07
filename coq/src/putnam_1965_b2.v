From mathcomp Require Import all_algebra all_ssreflect fintype.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Theorem putnam_1965_b2
    (n : nat)
    (hn : gt n 1)
    (won : 'I_n -> 'I_n -> bool)
    (hirrefl : forall i : 'I_n, won i i = false)
    (hantisymm : forall i j : 'I_n, i <> j -> won i j = negb (won j i))
    (w l : 'I_n -> int)
    (hw : w = fun r => \sum_(j : 'I_n) (if won r j then 1 else 0))
    (hl : l = fun r => (n%:Z - 1 - w r))
    : \sum_(r : 'I_n) (w r ^ 2) = \sum_(r : 'I_n) (l r ^ 2).
Proof. Admitted.