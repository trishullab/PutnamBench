theory putnam_1985_b3 imports Complex_Main
begin

theorem putnam_1985_b3:
  fixes a::"nat\<Rightarrow>nat\<Rightarrow>nat"
  assumes apos : "\<forall>m n::nat. a m n > 0"
    and ha : "\<forall>k::nat. k > 0 \<longrightarrow> card {(m::nat, n::nat). m > 0 \<and> n > 0 \<and> a m n = k} = 8"
  shows "\<exists>m n::nat. m > 0 \<and> n > 0 \<and> a m n > m * n"
  sorry

end