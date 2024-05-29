theory putnam_1969_b3 imports Complex_Main
begin

theorem putnam_1969_b3:
  fixes T :: "nat \<Rightarrow> real"
  assumes hT1: "\<forall>n::nat. (n \<ge> 1 \<longrightarrow> (T n) * (T (n+1)) = n)"
  and hT2: "filterlim (\<lambda>n::nat. (T n) / (T (n+1))) (nhds 1) at_top"
  shows "pi*(T 1)^2 = 2"
  sorry

end
