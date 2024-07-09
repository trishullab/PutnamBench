theory putnam_2004_a3 imports Complex_Main
"HOL-Analysis.Determinants"
begin

theorem putnam_2004_a3:
  fixes u::"nat\<Rightarrow>real"
  assumes hubase : "u 0 = 1 \<and> u 1 = 1 \<and> u 2 = 1"
    and hudet : "\<forall>n::nat. det (vector[vector[u n, u (n+1)], vector[u (n+2), u (n+3)]]) = fact n"
  shows "\<forall>n::nat. u n \<in> \<int>"
  sorry

end
