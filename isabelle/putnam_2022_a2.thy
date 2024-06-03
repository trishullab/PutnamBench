theory putnam_2022_a2 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

definition putnam_2022_a2_solution :: "nat \<Rightarrow> nat" where "putnam_2022_a2_solution \<equiv> undefined"
(* \<lambda> n. 2*n - 2 *)
theorem putnam_2022_a2:
  fixes n :: "nat"
    and S :: "(real poly) set"
    and negs :: "(real poly) \<Rightarrow> nat"
  defines "S \<equiv> {P :: real poly. degree P = 2*n}"
    and "negs \<equiv> \<lambda> P :: real poly. \<Sum> i=0..(degree P). (if coeff P i < 0 then 1 else 0)"
  assumes hn : "n \<ge> 2"
  shows "(GREATEST m :: nat. \<exists> P \<in> S. negs (P^2) = m) = putnam_2022_a2_solution n"
  sorry

end