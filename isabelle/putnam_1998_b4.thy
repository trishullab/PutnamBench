theory putnam_1998_b4 imports Complex_Main "HOL-Computational_Algebra.Factorial_Ring"
begin

definition putnam_1998_b4_solution::"nat\<Rightarrow>nat\<Rightarrow>bool" where "putnam_1998_b4_solution \<equiv> undefined"
(* \<lambda>n. \<lambda>m. multiplicity 2 n \<noteq> multiplicity 2 m *)
theorem putnam_1998_b4:
  fixes hsum::"nat\<Rightarrow>nat\<Rightarrow>int"
  defines "hsum \<equiv> \<lambda>n. \<lambda>m. (\<Sum>i=0..<m*n. (-1)^(i div m + i div n))"
  shows "\<forall>n m::nat. n > 0 \<and> m > 0 \<longrightarrow> (hsum n m = 0 \<longleftrightarrow> putnam_1998_b4_solution n m)"
  sorry

end