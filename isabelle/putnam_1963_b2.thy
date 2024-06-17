theory putnam_1963_b2 imports Complex_Main "HOL-Analysis.Elementary_Topology"
begin

definition putnam_1963_b2_solution::bool where "putnam_1963_b2_solution \<equiv> undefined"
(* True *)
theorem putnam_1963_b2:
  fixes S P::"real set"
  defines "S \<equiv> {x . \<exists> n m::int. x = 2 powi m * 3 powi n}"
    and "P \<equiv> {x. x > 0}"
  shows "closure S \<supseteq> P \<longleftrightarrow> putnam_1963_b2_solution"
  sorry

end