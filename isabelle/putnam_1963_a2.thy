theory putnam_1963_a2 imports Complex_Main
begin

theorem putnam_1963_a2:
  fixes f::"nat\<Rightarrow>nat"
  assumes hfpos : "\<forall>n. f n > 0"
    and hfinc : "strict_mono_on {1..} f"
    and hf2 : "f 2 = 2"
    and hfmn : "\<forall>m n. m > 0 \<longrightarrow> n > 0 \<longrightarrow> coprime m n \<longrightarrow> f (m * n) = f m * f n"
  shows "\<forall>n > 0. f n = n"
  sorry

end