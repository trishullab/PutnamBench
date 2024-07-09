theory putnam_1972_b1 imports Complex_Main
begin

theorem putnam_1972_b1:
  fixes S :: "real \<Rightarrow> real"
  and p :: "nat \<Rightarrow> real"
  defines "S \<equiv> (\<lambda>x::real. (\<Sum>n::nat. x^n * (x - 1)^(2*n) / (fact n)))"
  assumes hp: "\<exists>a::real>0. \<forall>x::real\<in>(ball 0 a). (\<Sum>n::nat. (p n)*x^n) = S x"
  shows "\<not>(\<exists>n::nat. p n = 0 \<and> p (n + 1) = 0 \<and> p (n + 2) = 0)"
  sorry

end
