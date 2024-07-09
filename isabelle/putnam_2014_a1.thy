theory putnam_2014_a1 imports Complex_Main
"HOL-Analysis.Derivative"
"HOL-Computational_Algebra.Primes"
begin

theorem putnam_2014_a1:
  fixes f::"real\<Rightarrow>real" and coeff::"nat\<Rightarrow>real" and n::nat
  defines "f \<equiv> \<lambda>x. (1 - x + x^2) * exp (x)"
    and "coeff \<equiv> \<lambda>n. (deriv^^n) f 0 / fact n"
  assumes non_zero : "coeff n \<noteq> 0"
  shows "\<exists>r::rat. coeff n = r \<and> (fst (quotient_of r) = 1 \<or> prime (fst (quotient_of r)))"
  sorry

end
