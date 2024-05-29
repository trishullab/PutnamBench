theory putnam_2003_a6 imports Complex_Main
begin

definition putnam_2003_a6_solution::bool where "putnam_2003_a6_solution ≡ undefined"
(* True *)
theorem putnam_2003_a6:
  fixes r::"(nat set) ⇒ nat ⇒ nat"
  defines "r ≡ λS. λn. card {(s1, s2). s1 ∈ S ∧ s2 ∈ S ∧ s1 ≠ s2 ∧ s1 + s2 = n}"
  shows "(∃A B::nat set. A ∪ B = ℕ ∧ A ∩ B = {} ∧ (∀n::nat. r A n = r B n)) ⟷ putnam_2003_a6_solution"
  sorry

end