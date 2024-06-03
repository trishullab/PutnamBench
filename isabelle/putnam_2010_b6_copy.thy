theory putnam_2010_b6 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"

begin

theorem putnam_2010_b6:
  fixes n :: "nat" 
    and A :: "real^'n^'n"
    and Apow :: "nat \<Rightarrow> real^'n^'n"
    and matrixpow :: "real^'n^'n \<Rightarrow> nat \<Rightarrow> real^'n^'n"
  assumes hApow : "\<forall> k > 0. Apow k = (\<chi> i j. (A$i$j)^k)"
    and npos : "n \<ge> 1"
    and cardn : "CARD('n) = n"
    and hmatrixpow : "\<forall> M :: real^'n^'n. matrixpow M 0 = mat 1 \<and> (\<forall> k :: nat > 0. matrixpow M k = M ** (matrixpow M (k-1)))"
  shows "(\<forall> k :: nat \<in> {1..n+1}. matrixpow A k = Apow k)\<longrightarrow>(\<forall> k \<ge> 1. matrixpow A k = Apow k)"
  sorry

end