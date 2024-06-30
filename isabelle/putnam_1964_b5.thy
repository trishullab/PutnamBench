theory putnam_1964_b5 imports Complex_Main
begin

theorem putnam_1964_b5:
  fixes a :: "nat \<Rightarrow> nat"
  and b :: "nat \<Rightarrow> nat"
  assumes ha: "strict_mono a \<and> (\<forall>n::nat. a n > 0)"
  and hb: "b 0 = a 0 \<and> (\<forall>n::nat. b (n+1) = lcm (b n) (a (n+1)))"
  shows "summable (\<lambda>n::nat. 1 / b n)"
  sorry

end
