theory putnam_1975_b5 imports Complex_Main "HOL-Analysis.Derivative"
begin

theorem putnam_1975_b5:
  fixes f::"nat\<Rightarrow>real\<Rightarrow>real"
  assumes h0 : "\<forall>x::real. f 0 x = exp x"
    and hf : "\<forall>n::nat. \<forall>x::real. f (n+1) x = x * (deriv (f n) x)"
  shows "(\<Sum>n::nat. (f n 1) / (fact n)) = exp (exp 1)"
  sorry

end