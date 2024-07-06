theory putnam_1982_a4 imports
Complex_Main
"HOL-Analysis.Derivative"
begin

theorem putnam_1982_a4:
  fixes hdiffeq :: "(real \<Rightarrow> real) \<Rightarrow> (real \<Rightarrow> real) \<Rightarrow> bool"
  and f g :: "real \<Rightarrow> real"
  defines "hdiffeq \<equiv> \<lambda> y z. y 0 = 1 \<and> z 0 = 0 \<and> y C1_differentiable_on UNIV \<and> z C1_differentiable_on UNIV \<and> (\<forall> x :: real. deriv y x = -((z x)^3) \<and> deriv z x = (y x)^3)"
  assumes hfgsat: "hdiffeq f g"
  and hfgonly: "\<not>(\<exists> f' g' :: real \<Rightarrow> real. (f \<noteq> f' \<or> g \<noteq> g') \<and> hdiffeq f' g')"
  shows "\<exists> L :: real. L > 0 \<and> (\<forall> x :: real. f (x + L) = f x \<and> g (x + L) = g x)"
  sorry

end