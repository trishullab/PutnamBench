theory putnam_2014_b4 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_2014_b4:
  fixes n :: nat
  and P :: "complex poly"
  assumes npos: "n > 0"
  and Px: "degree P = n \<and> (\<forall>k::nat\<in>{0..n}. coeff P k = 2 ^ (k*(n-k)))"
  shows "\<forall>r::complex. (poly P r = 0 \<longrightarrow> Im r = 0)"
  sorry

end
