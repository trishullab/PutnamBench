theory putnam_1985_a3 imports Complex_Main
begin

definition putnam_1985_a3_solution::"real\<Rightarrow>real" where "putnam_1985_a3_solution \<equiv> undefined"
(* \<lambda>x. exp x - 1 *)
theorem putnam_1985_a3:
  fixes d::real and a::"nat\<Rightarrow>nat\<Rightarrow>real"
  assumes ha0 : "\<forall>m::nat. a m 0 = d / 2^m"
    and ha : "\<forall>m::nat. \<forall>j::nat. a m (j+1) = (a m j)^2 + 2 * a m j"
  shows "(\<lambda>n. a n n) \<longlonglongrightarrow> (putnam_1985_a3_solution d)"
  sorry

end