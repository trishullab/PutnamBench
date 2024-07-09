theory putnam_1994_b5 imports Complex_Main
begin

theorem putnam_1994_b5:
  fixes f :: "real \<Rightarrow> nat \<Rightarrow> int"
  and n :: nat
  assumes hf: "\<forall>(\<alpha>::real)(x::nat). f \<alpha> x = \<lfloor>\<alpha>*x\<rfloor>"
  and npos: "n > 0"
  shows "\<exists>\<alpha>::real. \<forall>k::nat\<in>{1..n}. ((f \<alpha> (n^2))^k = n^2 - k) \<and> (f (\<alpha>^k) (n^2) = n^2 - k)"
  sorry

end
