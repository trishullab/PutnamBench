theory putnam_1984_b2 imports Complex_Main
begin

definition putnam_1984_b2_solution :: "real" where "putnam_1984_b2_solution \<equiv> undefined"
(* 8 *)
theorem putnam_1984_b2:
  fixes f :: "real \<Rightarrow> real \<Rightarrow> real"
  defines "f \<equiv> \<lambda> u v :: real. (u - v)^2 + (sqrt (2 - u^2) - 9/v)^2"
  shows "(LEAST (r :: real) . (\<exists> u \<in> {0<..<sqrt 2}. \<exists> v > 0. f u v = r)) = putnam_1984_b2_solution" 
  sorry

end