theory putnam_1994_a1 imports Complex_Main
begin

theorem putnam_1994_a1:
  fixes a :: "nat \<Rightarrow> real"
  assumes ha: "\<forall>n::nat\<ge>1. 0 < a n \<and> a n \<le> a (2*n) + a (2*n+1)"
  shows "\<not>(\<exists>s::real. filterlim (\<lambda>N::nat. (\<Sum>n::nat=1..N. a n)) (nhds s) at_top)"
  sorry

end
