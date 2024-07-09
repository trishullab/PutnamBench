theory putnam_1989_b1 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Lebesgue_Measure"
begin

definition putnam_1989_b1_solution :: "int \<times> int \<times> int \<times> int" where "putnam_1989_b1_solution \<equiv> undefined"
(* (4, 2, -5, 3) *)
theorem putnam_1989_b1:
  fixes square :: "(real^2) set"
    and edges :: "(real^2) set"
    and center :: "real^2"
    and Scloser :: "(real^2) set"
  defines "square \<equiv> {p :: real^2. \<forall> i :: 2. p$i \<in> {0..1}}"
    and "edges \<equiv> {p \<in> square. p$1 = 0 \<or> p$1 = 1 \<or> p$2 = 0 \<or> p$2 = 1}"
    and "center \<equiv> \<chi> i :: 2. (1 :: real) / 2"
    and "Scloser \<equiv> {p \<in> square. \<forall> q \<in> edges. dist p center < dist p q}"
  shows "let (a, b, c, d) = putnam_1989_b1_solution in b > 0 \<and> d > 0 \<and> (\<not>(\<exists> n :: int. n^2 = b)) \<and>
  measure lebesgue Scloser / measure lebesgue square = (a * sqrt (real_of_int b) + c) / d"
  sorry

end