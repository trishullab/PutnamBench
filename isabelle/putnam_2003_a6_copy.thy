theory putnam_2003_a6 imports Complex_Main
begin

theorem putnam_2003_a6:
  fixes r::"(nat set) ⇒ nat ⇒ nat"
  defines "r ≡ λS. λn. card {(s1, s2). s1 ∈ S ∧ s2 ∈ S ∧ s1 ≠ s2 ∧ s1 + s2 = n}"
  shows "(∃A B::nat set. A ∪ B = ℕ ∧ A ∩ B = {} ∧ (∀n::nat. r A n = r B n)) ⟷ ( True )"
  sorry

end