theory putnam_2003_a2 imports Complex_Main
begin

(* Note: Boosted domain to infinite set *)
theorem putnam_2003_a2:
  fixes n::nat and a b::"nat⇒real"
  assumes abnneg : "∀i ∈ {0..<n}. a i ≥ 0 ∧ b i ≥ 0"
  shows "((∏i=0..<n. a i) powr (1/n)) + ((∏i=0..<n. b i) powr (1/n)) ≤ ((∏i=0..<n. (a i + b i)) powr (1/n))"
  sorry

end