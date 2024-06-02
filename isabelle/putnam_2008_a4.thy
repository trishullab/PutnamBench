theory putnam_2008_a4 imports Complex_Main
begin

definition putnam_2008_a4_solution :: bool where "putnam_2008_a4_solution \<equiv> undefined"
(* False *)
theorem putnam_2008_a4:
  fixes f :: "real \<Rightarrow> real"
  assumes hf: "f \<equiv> (\<lambda>x::real. if x \<le> exp 1 then x else (x * f (ln x)))"
  shows "(\<exists>r::real. filterlim (\<lambda>N::nat. (\<Sum>n::nat=1..N. 1/f n)) (nhds r) at_top) \<longleftrightarrow> putnam_2008_a4_solution"
  sorry

end
