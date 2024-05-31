theory putnam_1982_b3 imports Complex_Main
begin

definition putnam_1982_b3_solution::real where "putnam_1982_b3_solution \<equiv> undefined"
(* 4/3 * (sqrt 2 - 1) *)
theorem putnam_1982_b3:
  fixes p::"nat\<Rightarrow>real"
  defines "p \<equiv> \<lambda>n. card {(c::nat, d::nat). c \<in> {1..n} \<and> d \<in> {1..n} \<and> (\<exists>m::nat. m^2 = c + d) } / n^2"
  shows "(\<lambda>n. p n * sqrt n) \<longlonglongrightarrow> putnam_1982_b3_solution"
  sorry

end