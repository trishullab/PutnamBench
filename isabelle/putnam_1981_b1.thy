theory putnam_1981_b1 imports Complex_Main
begin

definition putnam_1981_b1_solution::real where "putnam_1981_b1_solution \<equiv> undefined"
(* -1 *)
theorem putnam_1981_b1:
  fixes f::"nat\<Rightarrow>real"
  defines "f \<equiv> \<lambda>n. 1/n^5 * (\<Sum>h=1..n. (\<Sum>k=1..n. (5*h^4 -18*h^2*k^2 + 5*k^4)))"
  shows "f \<longlonglongrightarrow> putnam_1981_b1_solution"
  sorry

end