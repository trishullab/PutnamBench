theory putnam_2019_a6 imports Complex_Main
"HOL-Analysis.Derivative"
begin

theorem putnam_2019_a6:
  fixes g :: "real \<Rightarrow> real"
  and r :: real
  assumes hcont: "continuous_on {0..1} g"
  and hdiff: "g C1_differentiable_on {0<..<1} \<and> (deriv g) differentiable_on {0<..<1}"
  and rgt1: "r > 1"
  and hlim: "filterlim (\<lambda>x::real. g x / (x powr r)) (nhds 0) (at_right 0)"
  shows "(filterlim (deriv g) (nhds 0) (at_right 0)) \<or> (filterlim (\<lambda>x::real. Sup {xrg::real. (\<exists>x'::real\<in>{0<..x}. xrg = (x' powr r) * \<bar>(deriv^^2) g x'\<bar>)}) at_top (at_right 0))"
  sorry

end
