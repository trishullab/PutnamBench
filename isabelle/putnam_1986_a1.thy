theory putnam_1986_a1 imports Complex_Main
begin

definition putnam_1986_a1_solution::real where "putnam_1986_a1_solution \<equiv> undefined"
(* 18 *)
theorem putnam_1986_a1:
  fixes f::"real\<Rightarrow>real"
  defines "f \<equiv> \<lambda>x. x^3 - 3 * x"
  shows "putnam_1986_a1_solution = (GREATEST y. (\<exists>x. y = f x \<and> x^4 + 36 \<le> 13 * x^2))"
  sorry

end
