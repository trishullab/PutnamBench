theory putnam_1981_b5 imports
Complex_Main
begin

theorem putnam_1981_b5:
  fixes B :: "nat \<Rightarrow> nat"
  defines "B \<equiv> \<lambda> n. card {k :: nat. odd (n div (2 ^ k))}"
  shows "(\<exists> q :: rat. exp (\<Sum> n :: nat. B (n + 1) / ((n + 1) * (n + 2))) = q) \<longleftrightarrow> ( True )"
  sorry

end