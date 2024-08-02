theory putnam_1998_b4 imports Complex_Main "HOL-Computational_Algebra.Factorial_Ring"
begin

definition putnam_1998_b4_solution::"nat\<Rightarrow>nat\<Rightarrow>bool" where "putnam_1998_b4_solution \<equiv> undefined"
(* (\<lambda>m n::nat. (GREATEST i::nat. 2^i dvd m) \<noteq> (GREATEST i::nat. 2^i dvd n)) *)
theorem putnam_1998_b4:
  fixes hsum::"nat\<Rightarrow>nat\<Rightarrow>int"
  defines "hsum \<equiv> \<lambda>m. \<lambda>n. (\<Sum>i::nat=0..<m*n. (-1)^(i div m + i div n))"
  shows "\<forall>m n::nat. m > 0 \<and> n > 0 \<longrightarrow> (hsum m n = 0 \<longleftrightarrow> putnam_1998_b4_solution m n)"
  sorry

end