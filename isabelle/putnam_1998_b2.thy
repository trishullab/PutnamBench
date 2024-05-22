theory putnam_1998_b2 imports Complex_Main "HOL-Analysis.Topology_Euclidean_Space"
begin

definition putnam_1998_b2_solution::"real\<Rightarrow>real\<Rightarrow>real" where "putnam_1998_b2_solution \<equiv> undefined"
(* \<lambda>a. \<lambda>b. sqrt (2*a^2 + 2*b^2) *)
theorem putnam_1998_b2:
  fixes a b::real
  assumes hab : "0 < b \<and> b < a"
  shows "putnam_1998_b2_solution a b = (LEAST p. \<exists>c x::real. p = dist (a, b) (c, 0) + dist (c, 0) (x, x) + dist (a, b) (x, x) \<and> 
    dist (a, b) (c, 0) + dist (c, 0) (x, x) > dist (a, b) (x, x) \<and>
    dist (a, b) (c, 0) + dist (a, b) (x, x) > dist (c, 0) (x, x) \<and>
    dist (c, 0) (x, x) + dist (a, b) (x, x) > dist (a, b) (c, 0))"
  sorry

end