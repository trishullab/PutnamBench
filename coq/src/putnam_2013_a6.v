From mathcomp Require Import all_algebra all_ssreflect.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Theorem putnam_2013_a6
    (w : int -> int -> int)
    (A : seq (int * int) -> int)
    (hwn1 : w (-2) (-2) = -1 /\ w 2 (-2) = -1 /\ w (-2) 2 = -1 /\ w 2 2 = -1)
    (hwn2 : w (-1) (-2) = -2 /\ w 1 (-2) = -2 /\ w (-2) (-1) = -2 /\ w 2 (-1) = -2 /\ w (-2) 1 = -2 /\ w 2 1 = -2 /\ w (-1) 2 = -2 /\ w 1 2 = -2)
    (hw2 : w 0 (-2) = 2 /\ w (-2) 0 = 2 /\ w 2 0 = 2 /\ w 0 2 = 2)
    (hw4 : w (-1) (-1) = 4 /\ w 1 (-1) = 4 /\ w (-1) 1 = 4 /\ w 1 1 = 4)
    (hwn4 : w 0 (-1) = -4 /\ w (-1) 0 = -4 /\ w 1 0 = -4 /\ w 0 1 = -4)
    (hw12 : w 0 0 = 12)
    (hw0 : forall a b : int, (`|a| > 2 \/ `|b| > 2) -> w a b = 0)
    (ha : forall s : seq (int * int), A s = \sum_(a <- s) (\sum_(b <- s) w (a.1 - b.1) (a.2 - b.2)))
    : forall s : seq (int * int), gt (size s) 0 -> uniq s -> A s > 0.
Proof. Admitted. 