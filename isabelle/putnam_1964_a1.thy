theory putnam_1964_a1 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

theorem putnam_1964_a1:
  fixes A :: "(real^2) set"
  and dists :: "real set"
  assumes hAcard: "card A = 6"
  defines "dists \<equiv> {d::real. (\<exists>a b::real^2. a \<in> A \<and> b \<in> A \<and> a \<noteq> b \<and> d = dist a b)}"
  shows "(GREATEST d::real. d \<in> dists) / (LEAST d::real. d \<in> dists) \<ge> sqrt 3"
  sorry

end
