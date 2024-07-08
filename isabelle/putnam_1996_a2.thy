theory putnam_1996_a2 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Line_Segment"
begin

definition putnam_1996_a2_solution :: "(real^2) \<Rightarrow> (real^2) \<Rightarrow> ((real^2) set)" where "putnam_1996_a2_solution \<equiv> undefined"
(* \<lambda> O1 O2 :: real^2. {p :: real^2. dist p (midpoint O1 O2) \<in> {1..2}} *)
theorem putnam_1996_a2:
  fixes O1 O2 :: "real^2"
    and C1 C2 :: "(real^2) set"
  defines "C1 \<equiv> {p :: real^2. dist p O1 = 1}"
    and "C2 \<equiv> {p :: real^2. dist p O2 = 3}"
  assumes hO1O2 : "dist O1 O2 = 10"
  shows "{M :: real^2. \<exists> X \<in> C1. \<exists> Y \<in> C2. M = midpoint X Y} = putnam_1996_a2_solution O1 O2"
  sorry

end