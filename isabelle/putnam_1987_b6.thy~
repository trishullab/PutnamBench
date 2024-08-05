theory putnam_1987_b6 imports Complex_Main "HOL-Computational_Algebra.Primes" "HOL-Algebra.Ring"
begin

theorem putnam_1987_b6:
  fixes p::nat and F (structure) and S::"'a set"
  assumes podd : "odd p \<and> prime p"
    and Ffield : "field F"
    and Fcard : "finite (carrier F) \<and> card (carrier F) = p^2"
    and Snz : "\<forall>x \<in> S. x \<noteq> \<zero>\<^bsub>F\<^esub>"
    and Scard : "real_of_nat (card S) = (p^2 - 1::real) / 2"
    and hS : "\<forall>a::'a. a \<in> carrier F \<longrightarrow> a \<noteq> \<zero>\<^bsub>F\<^esub> \<longrightarrow> \<not>((a \<in> S) \<longleftrightarrow> ((\<ominus>\<^bsub>F\<^esub> a) \<in> S))"
  shows "even (card (S \<inter> {x. (\<exists>a \<in> S. x = a \<oplus>\<^bsub>F\<^esub> a)}))"
  sorry

end