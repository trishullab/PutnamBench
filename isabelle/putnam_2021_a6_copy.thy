theory putnam_2021_a6 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_2021_a6:
  fixes Pcoeff :: "int poly \<Rightarrow> bool"
  and Pprod :: "int poly \<Rightarrow> bool"
  assumes hPcoeff: "\<forall>P::int poly. Pcoeff P = (\<forall>n::nat. coeff P n = 0 \<or> coeff P n = 1)"
  and hPprod: "\<forall>p::int poly. Pprod P = (\<exists>Q R::int poly. degree Q > 0 \<and> degree R > 0 \<and> P = Q * R)"
  shows "(\<forall>p::int poly. (Pcoeff P \<and> Pprod P) \<longrightarrow> (poly P 2 \<noteq> 0 \<and> poly P 2 \<noteq> 1 \<and> \<not>prime (poly P 2))) \<longleftrightarrow> ( True )"
  sorry

end
