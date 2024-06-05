theory putnam_1986_a3 imports Complex_Main
begin

definition putnam_1986_a3_solution::real where "putnam_1986_a3_solution \<equiv> undefined"
(* pi / 2 *)
theorem putnam_1986_a3:
  fixes arccot::"real\<Rightarrow>real"
  defines "arccot \<equiv> \<lambda>y. (THE x. 0 < x \<and> x \<le> pi/2 \<and> cot x = y)"
  shows "(\<Sum>n::nat. arccot (n^2 + n + 1)) = putnam_1986_a3_solution"
  sorry

end
