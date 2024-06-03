theory putnam_2015_b1 imports Complex_Main
"HOL-Analysis.Derivative"
begin

theorem putnam_2015_b1:
  fixes f :: "real \<Rightarrow> real"
  and nzeros :: "(real \<Rightarrow> real) \<Rightarrow> nat \<Rightarrow> bool"
  assumes fdiff: "f C1_differentiable_on UNIV \<and> (deriv f) C1_differentiable_on UNIV \<and> ((deriv^^2) f) differentiable_on UNIV"
  and hnzeros: "\<forall>(f'::real\<Rightarrow>real)(n::nat). nzeros f' n = (card {x::real. f' x = 0} \<ge> n)"
  and fzeros: "nzeros f 5"
  shows "nzeros (\<lambda>x::real. f x + (6*deriv f x) + (12*(deriv^^2) f x) + (8*(deriv^^3) f x)) 2"
  sorry

end
