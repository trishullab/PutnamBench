theory putnam_2003_a2 imports Complex_Main
begin

(* Note: Boosted domain to infinite set *)
theorem putnam_2003_a2:
  fixes n::nat and a b::"nat\<Rightarrow>real"
  assumes npos: "n \<ge> 1"
  and abnneg: "\<forall>i \<in> {0..<n}. a i \<ge> 0 \<and> b i \<ge> 0"
  shows "((\<Prod>i=0..<n. a i) powr (1/n)) + ((\<Prod>i=0..<n. b i) powr (1/n)) \<le> ((\<Prod>i=0..<n. (a i + b i)) powr (1/n))"
  sorry

end