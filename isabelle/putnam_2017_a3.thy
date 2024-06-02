theory putnam_2017_a3 imports Complex_Main
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Lebesgue_Measure"
begin

(* uses (real \<Rightarrow> real) instead of ({a..b} \<Rightarrow> {0<..}) *)
theorem putnam_2017_a3:
  fixes a b :: real
  and f g :: "real \<Rightarrow> real"
  and I :: "nat \<Rightarrow> real"
  assumes altb: "a < b"
  and fgcont: "continuous_on {a..b} f \<and> continuous_on {a..b} g"
  and fgimg: "f ` {a..b} \<subseteq> {0<..} \<and> g ` {a..b} \<subseteq> {0<..}"
  and fgint: "set_lebesgue_integral lebesgue {a<..<b} f = set_lebesgue_integral lebesgue {a<..<b} g"
  and fneg: "\<exists>x::real\<in>{a..b}. f x \<noteq> g x"
  and hI: "\<forall>n::nat>0. I n = set_lebesgue_integral lebesgue {a<..<b} (\<lambda>x::real. (f x)^(n+1) / (g x)^n)"
  shows "(\<forall>n::nat>0. I (n+1) > I n) \<and> filterlim I at_top at_top"
  sorry

end
