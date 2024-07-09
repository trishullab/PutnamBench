theory putnam_1973_a4 imports Complex_Main
begin

definition putnam_1973_a4_solution :: nat where "putnam_1973_a4_solution \<equiv> undefined"
(* 3 *)
theorem putnam_1973_a4:
  fixes f :: "real \<Rightarrow> real"
  defines "f \<equiv> (\<lambda>x::real. 2 powr x - 1 - x^2)"
  shows "putnam_1973_a4_solution = card {x::real. (f x = 0)}"
  sorry

end
