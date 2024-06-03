theory putnam_1997_b1 imports Complex_Main

begin

theorem putnam_1997_b1:
  fixes F :: "nat \<Rightarrow> real"
  defines "F \<equiv> \<lambda> n. (\<Sum> m \<in> {1..6*n-1}. min (dist_to_int (m/(6*n))) (dist_to_int (m/(3*n))))"
  shows "\<forall> n :: nat > 0. F n = ( \<lambda> n. n ) n"
  sorry

end