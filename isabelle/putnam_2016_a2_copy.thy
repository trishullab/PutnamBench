theory putnam_2016_a2 imports
Complex_Main
begin

theorem putnam_2016_a2:
  fixes M :: "nat \<Rightarrow> nat"
  defines "M \<equiv> \<lambda> n. GREATEST m. m choose (n - 1) > (m - 1) choose n"
  shows "(\<lambda> n. M n / n) \<longlonglongrightarrow> ( (3 + sqrt 5) / 2 )"
  sorry

end