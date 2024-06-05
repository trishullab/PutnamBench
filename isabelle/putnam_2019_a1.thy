theory putnam_2019_a1 imports Complex_Main
"HOL-Number_Theory.Cong"
begin

definition putnam_2019_a1_solution :: "int set" where "putnam_2019_a1_solution \<equiv> undefined"
(* {n::int. n \<ge> 0 \<and> \<not>[n = 3] (mod 9) \<and> \<not>[n = 6] (mod 9)} *)
theorem putnam_2019_a1:
  shows "{n::int. (\<exists>A::int\<ge>0. \<exists>B::int\<ge>0. \<exists>C::int\<ge>0. A^3 + B^3 + C^3 - 3*A*B*C = n)} = putnam_2019_a1_solution"
  sorry

end
