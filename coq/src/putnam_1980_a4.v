From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1980_a4
(abcvals : int -> int -> int -> Prop)
(habcvals : forall (a b c : int), (abcvals a b c <-> (~ (a = 0 /\ b = 0 /\ c = 0) /\ `|a| < 10^6 /\ `|b| < 10^6 /\ `|c| < 10^6)))
: (exists (a b c : int), abcvals a b c /\ `|a%:~R + b%:~R * (@Num.sqrt R 2) + c%:~R * (@Num.sqrt R 3)| < 10^(-11)) /\ (forall (a b c : int), abcvals a b c -> `|a%:~R + b%:~R * (@Num.sqrt R 2) + c%:~R * (@Num.sqrt R 3)| > 10^(-21)).
Proof. Admitted.