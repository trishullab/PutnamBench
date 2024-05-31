theory putnam_1975_a2 imports Complex_Main
begin

definition putnam_1975_a2_solution::"real\<Rightarrow>real\<Rightarrow>bool" where "putnam_1975_a2_solution \<equiv> undefined"
(* \<lambda>b. \<lambda>c. c < 1 \<and> c - b > -1 \<and> c + b > -1 *)
theorem putnam_1975_a2:
  shows "\<forall>b c::real. (\<forall>z::complex. (z^2 + b * z + c) = 0 \<longrightarrow> norm z < 1) \<longleftrightarrow> putnam_1975_a2_solution b c"
  sorry

end