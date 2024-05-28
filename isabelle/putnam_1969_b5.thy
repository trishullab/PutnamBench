theory putnam_1969_b5 imports Complex_Main
begin

theorem putnam_1969_b5:
  fixes a :: "nat \<Rightarrow> real"
  and k :: "real \<Rightarrow> nat"
  assumes ha: "strict_mono a \<and> (\<forall>n::nat. a n > 0)"
  and hinvasum: "\<exists>C::real. filterlim (\<lambda>n::nat. (\<Sum>i::nat=0..(n-1). 1/(a i))) (nhds C) at_top"
  defines "k \<equiv> (\<lambda>x::real. card {n::nat. a n \<le> x})"
  shows "filterlim (\<lambda>t::real. (k t)/t) (nhds 0) at_top"
  sorry

end
