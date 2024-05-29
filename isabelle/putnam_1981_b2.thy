theory putnam_1981_b2 imports Complex_Main
begin

definition putnam_1981_b2_solution::real where "putnam_1981_b2_solution \<equiv> undefined"
(* 12 - 8 * sqrt 2 *)
theorem putnam_1981_b2:
  fixes P::"real\<Rightarrow>real\<Rightarrow>real\<Rightarrow>bool" and f::"real\<Rightarrow>real\<Rightarrow>real\<Rightarrow>real"
  defines "P \<equiv> \<lambda>r. \<lambda>s. \<lambda>t. 1 \<le> r \<and> r \<le> s \<and> s \<le> t \<and> t \<le> 4"
    and "f \<equiv> \<lambda>r. \<lambda>s. \<lambda>t. (r-1)^2 + (s/r - 1)^2 + (t/s - 1)^2 + (4/t - 1)^2" 
  shows "putnam_1981_b2_solution = (LEAST z::real. \<exists>r. \<exists>s. \<exists>t. P r s t \<and> z = f r s t)"
  sorry

end