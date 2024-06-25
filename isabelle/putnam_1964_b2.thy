theory putnam_1964_b2 imports Complex_Main
"HOL-Library.Cardinality"
begin

theorem putnam_1964_b2:
  fixes n :: nat
  and P :: "('S set) set"
  assumes npos: "n > 0"
  and Scard: "CARD('S) = n"
  and Pfinite: "finite P"
  and hPP: "\<forall>T\<in>P. \<forall>U\<in>P. T \<inter> U \<noteq> {}"
  and hPS: "\<not>(\<exists>T::'S set. T \<notin> P \<and> (\<forall>U\<in>P. T \<inter> U \<noteq> {}))"
  shows "card P = 2^(n-1)"
  sorry

end
