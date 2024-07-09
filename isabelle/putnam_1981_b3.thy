theory putnam_1981_b3 imports Complex_Main "HOL-Computational_Algebra.Primes"
begin

theorem putnam_1981_b3:
  fixes P::"nat\<Rightarrow>bool"
  defines "P \<equiv> \<lambda>n. \<forall>p::nat. (prime p \<and> p dvd (n^2 + 3)) \<longrightarrow> (\<exists>k::nat. k^2 < n \<and> p dvd (k^2 + 3))"
  shows "\<forall>n::nat. \<exists>m::nat. m > n \<and> P m"
  sorry

end