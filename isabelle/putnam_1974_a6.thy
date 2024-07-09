theory putnam_1974_a6 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1974_a6_solution :: nat where "putnam_1974_a6_solution \<equiv> undefined"
(* 25 *)
theorem putnam_1974_a6:
  fixes n :: nat
  and hdivnallx :: "(int poly) \<Rightarrow> bool"
  defines "n \<equiv> 10^6"
  and "hdivnallx \<equiv> (\<lambda>f::int poly. lead_coeff f = 1 \<and> (\<forall>x::int. n dvd (poly f x)))"
  shows "(LEAST d::nat. (\<exists>f::int poly. hdivnallx f \<and> d = degree f)) = putnam_1974_a6_solution"
  sorry

end
