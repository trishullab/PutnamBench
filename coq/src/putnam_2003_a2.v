From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals exp sequences normedtype.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem putnam_2003_a2
    (n : nat)
    (hn : gt n 0)
    (a b : 'I_n -> R)
    (abnneg : forall i : 'I_n, (a i) >= 0 /\ (b i) >= 0)
    : expR (ln (\prod_(i < n) (a i)) * (1 / n%:R)) +
      expR (ln (\prod_(i < n) (b i)) * (1 / n%:R)) <=
      expR (ln (\prod_(i < n) (a i + b i)) * (1 / n%:R)).
Proof. Admitted.