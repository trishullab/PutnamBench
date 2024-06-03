theory putnam_2015_b3 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

theorem putnam_2015_b3:
  fixes S :: "(real^2^2) set"
  and M :: "real^2^2"
  and Mpow :: "real^2^2 \<Rightarrow> nat \<Rightarrow> real^2^2"
  and MinS :: bool
  assumes hS: "S \<equiv> {M'::real^2^2. (M'$1$2 - M'$1$1 = M'$2$1 - M'$1$2) \<and> (M'$1$2 - M'$1$1 = M'$2$2 - M'$2$1)}"
  and hMpow: "\<forall>A::real^2^2. Mpow A 0 = mat 1 \<and> (\<forall>k::nat>0. Mpow A k = Mpow A (k-1) ** A)"
  and hMinS: "MinS \<equiv> (M \<in> S \<and> (\<exists>k::nat>1. Mpow M k \<in> S))"
  shows "MinS \<longleftrightarrow> M \<in> ( {M::real^2^2. (\<exists>\<alpha> \<beta>::real. M$1$1 = \<alpha>*1 + \<beta>*-3 \<and> M$1$2 = \<alpha>*1 + \<beta>*-1 \<and> M$2$1 = \<alpha>*1 + \<beta>*1 \<and> M$2$2 = \<alpha>*1 + \<beta>*3)} )"
  sorry

end
