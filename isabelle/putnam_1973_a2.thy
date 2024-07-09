theory putnam_1973_a2 imports Complex_Main
"HOL-Analysis.Derivative"
begin

definition putnam_1973_a2_solution :: bool where
"putnam_1973_a2_solution \<equiv> undefined"
(* True *)
theorem putnam_1973_a2:
  fixes L :: "real list"
    and pluses :: "nat"
    and S :: "nat \<Rightarrow> real"
  defines "pluses \<equiv> card {i :: nat. i \<in> {0..7} \<and> L!i = 1}"
    and "S \<equiv> \<lambda> n :: nat. (\<Sum> i \<in> {1..n}. L!(i mod 8)/(i::real))"
  shows "(pluses = 4 \<longrightarrow> filterlim S (nhds 1) at_top) \<and> (putnam_1973_a2_solution \<longleftrightarrow> ((\<exists> l :: real. filterlim S (nhds 1) at_top) \<longrightarrow> pluses = 4))"
  sorry

end