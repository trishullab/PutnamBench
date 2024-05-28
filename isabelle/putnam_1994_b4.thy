theory putnam_1994_b4 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

theorem putnam_1994_b4:
  fixes matgcd :: "(int^2^2) \<Rightarrow> nat"
  and A :: "int^2^2"
  and matpow :: "int^2^2 \<Rightarrow> nat \<Rightarrow> int^2^2"
  and d :: "nat \<Rightarrow> nat"
  assumes hmatgcd: "\<forall>M::int^2^2. matgcd M = Gcd {M$1$1, M$1$2, M$2$1, M$2$2}"
  and hA: "A$1$1 = 3 \<and> A$1$2 = 2 \<and> A$2$1 = 4 \<and> A$2$2 = 3"
  and hmatpow: "\<forall>M::int^2^2. matpow M 0 = mat 1 \<and> (\<forall>k::nat>0. matpow M k = matpow M (k-1) ** M)"
  and hd: "\<forall>n::nat\<ge>1. d n = matgcd (matpow A n - mat 1)"
  shows "filterlim d at_top at_top"
  sorry

end
