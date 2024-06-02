theory putnam_2023_a1 imports Complex_Main
"HOL-Analysis.Derivative"
begin

definition putnam_2023_a1_solution::nat where "putnam_2023_a1_solution \<equiv> undefined"
(* 18 *)
theorem putnam_2023_a1:
  fixes n :: nat and f :: "nat \<Rightarrow> real \<Rightarrow> real"
  defines "f \<equiv> \<lambda>n. \<lambda>x. \<Prod>i=1..n. cos (real i * x)"
  shows "putnam_2023_a1_solution = (LEAST m::nat. m > 0 \<and> abs ((deriv^^2) (f m) 0) > 2023)"
  sorry

end
