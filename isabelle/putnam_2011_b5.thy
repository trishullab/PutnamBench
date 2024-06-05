theory putnam_2011_b5 imports Complex_Main
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Lebesgue_Measure"
begin

theorem putnam_2011_b5:
  fixes a :: "nat \<Rightarrow> real"
  assumes h: "\<exists>A::real. \<forall>n::nat. (set_lebesgue_integral lebesgue \<real> (\<lambda>x::real. (\<Sum>i::nat=0..(n-1). 1 / (1 + (x-a i)^2)) ^ 2)) \<le> A*n"
  shows "\<exists>B::real>0. \<forall>n::nat. (\<Sum>i::nat=0..(n-1). \<Sum>j::nat=0..(n-1). 1 + (a i-a j)^2) \<ge> B*n^3"
  sorry

end
