theory putnam_1981_a1 imports Complex_Main
begin

definition putnam_1981_a1_solution::real where "putnam_1981_a1_solution \<equiv> undefined"
(* 1/8 *)
theorem putnam_1981_a1:
  fixes P::"nat\<Rightarrow>nat\<Rightarrow>bool" and E::"nat\<Rightarrow>nat"
  defines "P \<equiv> \<lambda>n. \<lambda>k. 5^k dvd (\<Prod>m=1..n. m^m)"
    and "E \<equiv> \<lambda>n. (GREATEST k. P n k)"
  shows "(\<lambda>n. (E n) / n^2) \<longlonglongrightarrow> putnam_1981_a1_solution"
  sorry

end