theory putnam_1978_a5 imports Complex_Main
begin

theorem putnam_1978_a5:
  fixes n :: "nat"
    and \<mu> :: "real"
    and a :: "nat \<Rightarrow> real"
  defines "\<mu> \<equiv> (\<Sum> i \<in> {1..n}. a i)/(real n)"
  assumes npos : "n > 0"
    and ha : "\<forall> i :: nat. a i \<in> {0 :: real<..<pi}"
  shows "(\<Prod> i \<in> {1..n}. sin (a i) / (a i)) \<le> (sin \<mu> / \<mu>)^n"
  sorry

end