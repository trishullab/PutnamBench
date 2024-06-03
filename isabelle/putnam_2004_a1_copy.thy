theory putnam_2004_a1 imports Complex_Main
begin

theorem putnam_2004_a1:
  fixes S :: "(nat \<Rightarrow> bool) \<Rightarrow> nat \<Rightarrow> real"
  assumes hS: "\<forall>attempts::nat\<Rightarrow>bool. \<forall>N::nat\<ge>1. S attempts N = (\<Sum>i::nat=0..(N-1). of_bool (attempts i)) / N"
  shows "(\<forall>(attempts::nat\<Rightarrow>bool)(a::nat)(b::nat). (1 \<le> a \<and> a < b \<and> S attempts a < 0.8 \<and> S attempts b > 0.8) \<longrightarrow> (\<exists>c::nat. a < c \<and> c < b \<and> S attempts c = 0.8)) \<longleftrightarrow> ( True )"
  sorry

end
