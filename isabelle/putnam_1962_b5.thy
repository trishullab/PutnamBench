theory putnam_1962_b5 imports Complex_Main
begin

theorem putnam_1962_b5:
  fixes n :: "int"
  assumes ng1 : "n > 1"
  shows "(3 * (real_of_int n) + 1) / (2 * n + 2) < (\<Sum> i \<in> {1..n}. (((real_of_int i) / n) powr (real_of_int n))) \<and> 
  (\<Sum> i \<in> {1..n}. (((real_of_int i) / n) powr (real_of_int n))) < 2"
  sorry

end