theory putnam_1983_b6 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"

begin

theorem putnam_1983_b6:
  fixes n :: "nat"
    and \<alpha> :: "complex"
    and integralcoeffs :: "complex poly \<Rightarrow> bool"
  defines "integralcoeffs \<equiv> \<lambda> p. \<forall> n :: nat. coeff p n \<in> \<int>"
  assumes npos : "n > 0"
    and h\<alpha> : "\<alpha>^(2^n + 1) - 1 = 0 \<and> \<alpha> \<noteq> 1"
  shows "\<exists> p q :: complex poly. integralcoeffs p \<and> integralcoeffs q \<and> (poly p \<alpha>)^2 + (poly q \<alpha>)^2 = -1" 
  sorry

end
