theory putnam_1979_a2 imports
Complex_Main
begin

definition putnam_1979_a2_solution :: "real \<Rightarrow> bool" where "putnam_1979_a2_solution \<equiv> undefined"
(* \<lambda> k :: real. k \<ge> 0 *)
theorem putnam_1979_a2:
  shows "\<forall> k :: real. (\<exists> f :: real \<Rightarrow> real. continuous_on UNIV f \<and> (\<forall> x :: real. f (f x) = k * x ^ 9)) \<longleftrightarrow> putnam_1979_a2_solution k"
  sorry 

end