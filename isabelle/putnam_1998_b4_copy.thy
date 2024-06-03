theory putnam_1998_b4 imports Complex_Main "HOL-Computational_Algebra.Factorial_Ring"
begin

theorem putnam_1998_b4:
  fixes hsum::"nat\<Rightarrow>nat\<Rightarrow>int"
  defines "hsum \<equiv> \<lambda>n. \<lambda>m. (\<Sum>i=0..<m*n. (-1)^(i div m + i div n))"
  shows "\<forall>n m::nat. n > 0 \<and> m > 0 \<longrightarrow> (hsum n m = 0 \<longleftrightarrow> ( \<lambda>n. \<lambda>m. multiplicity 2 n \<noteq> multiplicity 2 m ) n m)"
  sorry

end