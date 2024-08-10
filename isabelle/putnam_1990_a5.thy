theory putnam_1990_a5 imports Complex_Main "HOL-Analysis.Finite_Cartesian_Product"
begin

definition putnam_1990_a5_solution::bool where "putnam_1990_a5_solution \<equiv> undefined"
(* False *)  
theorem putnam_1990_a5:
  shows "(\<forall> n \<ge> 1. CARD('a) = n \<longrightarrow> (\<forall> A B :: real^'a^'a. A ** B ** A ** B = mat 0 \<longrightarrow> B ** A ** B ** A = mat 0)) \<longleftrightarrow> putnam_1990_a5_solution"
  sorry

end