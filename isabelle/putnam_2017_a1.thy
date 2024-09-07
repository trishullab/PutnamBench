theory putnam_2017_a1 imports Complex_Main
begin

definition putnam_2017_a1_solution::"int set" where "putnam_2017_a1_solution \<equiv> undefined"
(* { x::int . x > 0 \<and> (x = 1 \<or> 5 dvd x) } *)
theorem putnam_2017_a1:
  fixes IsQualifying :: "(int set) \<Rightarrow> bool"
    and S :: "int set"  
  assumes IsQualifying_def : "\<forall> S. IsQualifying S \<longleftrightarrow>
    (\<forall> n \<in> S. 0 < n) \<and>
    2 \<in> S \<and>
    (\<forall> n. n^2 \<in> S \<longrightarrow> n \<in> S) \<and>
    (\<forall> n \<in> S. (n + 5)^2 \<in> S)"
    and hS : "S = (LEAST A. IsQualifying S)"
  shows "putnam_2017_a1_solution = {x :: int. x > 0} - s"
  sorry  

end