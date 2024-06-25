theory putnam_1964_b1 imports Complex_Main
"HOL-Library.Extended_Nonnegative_Real"
begin

theorem putnam_1964_b1:
  fixes a :: "nat \<Rightarrow> int"
  and b :: "nat \<Rightarrow> ennreal"
  assumes apos: "\<forall>k::nat. a k > 0"
  and ha: "summable (\<lambda>n::nat. 1 / a n)"
  defines "b \<equiv> (\<lambda>n::nat. if finite {k::nat. a k \<le> n} then card {k::nat. a k \<le> n} else \<infinity>)"
  shows "filterlim (\<lambda>n::nat. b n / n) (nhds 0) at_top"
  sorry

end
