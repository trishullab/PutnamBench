theory putnam_2016_a2 imports
Complex_Main
begin

definition putnam_2016_a2_solution :: real where "putnam_2016_a2_solution \<equiv> undefined"
(* (3 + sqrt 5) / 2 *)
theorem putnam_2016_a2:
  fixes M :: "nat \<Rightarrow> nat"
  defines "M \<equiv> \<lambda> n. GREATEST m. m choose (n - 1) > (m - 1) choose n"
  shows "(\<lambda> n. M n / (real n)) \<longlonglongrightarrow> putnam_2016_a2_solution"
  sorry

end