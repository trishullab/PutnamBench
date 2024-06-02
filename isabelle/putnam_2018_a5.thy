theory putnam_2018_a5 imports Complex_Main
"HOL-Analysis.Derivative"
begin

theorem putnam_2018_a5:
  fixes f :: "real\<Rightarrow>real"
  assumes f_diff : "\<forall>n. (deriv^^n) f differentiable_on UNIV"
    and f0 : "f 0 = 0"
    and f1 : "f 1 = 1"
    and fpos : "\<forall>x. f x \<ge> 0"
  shows "\<exists>n > 0. \<exists>x::real. (deriv^^n) f x < 0"
  sorry

end
