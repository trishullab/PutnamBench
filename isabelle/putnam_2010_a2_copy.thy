theory putnam_2010_a2 imports Complex_Main
"HOL-Analysis.Derivative"
begin

theorem putnam_2010_a2:
  shows "{f::real\<Rightarrow>real. f differentiable_on UNIV \<and>
  (\<forall>(x::real)(n::nat). (n > 0 \<longrightarrow> deriv f x = (f (x + n) - f x)/n))} = ( {f::real\<Rightarrow>real. (\<exists>c d::real. \<forall>x::real. f x = c*x + d)} )"
  sorry

end
