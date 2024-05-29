theory putnam_1977_b1 imports Complex_Main
begin

definition putnam_1977_b1_solution::real where "putnam_1977_b1_solution \<equiv> undefined"
(* 2/3 *)
theorem putnam_1977_b1:
  shows "(\<lambda>N. \<Prod>n=2..N. (n^3 - 1) / (n^3 + 1)) \<longlonglongrightarrow> putnam_1977_b1_solution"
  sorry

end