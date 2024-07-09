theory putnam_2020_a6 imports Complex_Main
begin

definition putnam_2020_a6_solution :: real where "putnam_2020_a6_solution \<equiv> undefined"
(* pi/4 *)
theorem putnam_2020_a6:
  fixes f :: "int \<Rightarrow> (real \<Rightarrow> real)"
  assumes "f \<equiv> (\<lambda>N::int. (\<lambda>x::real. (\<Sum>n::int=0..N. (N + 1/2 - n) / ((N + 1)*(2*n + 1)) * sin ((2*n + 1)*x))))"
  shows "(LEAST M::real. (\<forall>N::int>0. \<forall>x::real. f N x \<le> M)) = putnam_2020_a6_solution"
  sorry

end
