theory putnam_2005_a3 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
"HOL-Analysis.Derivative"
begin

theorem putnam_2005_a3:
  fixes p :: "complex poly"
    and n :: nat
    and g :: "complex \<Rightarrow> complex"
    and z :: "complex"
  assumes pdeg : "degree p = n"
    and pzeros : "\<forall>z::complex. (poly p z = 0 \<longrightarrow> norm z = 1)"
    and hg : "\<forall>z::complex. g z = (poly p z) / csqrt (z^n)"
    and hn : "n > 0"
    and hz : "z \<noteq> 0 \<and> deriv g z = 0"
  shows "norm z = 1"
  sorry

end
