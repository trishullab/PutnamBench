theory putnam_1986_b3 imports Complex_Main 
"HOL-Computational_Algebra.Polynomial" 
"HOL-Computational_Algebra.Primes"
begin

theorem putnam_1986_b3:
  fixes cong :: "(int poly) \<Rightarrow> (int poly) \<Rightarrow> int \<Rightarrow> bool"
    and n p :: nat 
    and f g h r s :: "int poly"
  defines "cong \<equiv> \<lambda>f. \<lambda>g. \<lambda>m. \<forall>i::nat. m dvd (coeff (f - g) i)"
  assumes nppos : "n > 0 \<and> p > 0"
    and pprime : "prime p"
    and hcoprime : "cong (r * f + s * g) [:1:] p"
    and hprod : "cong (f * g) h p"
  shows "\<exists>F G:: int poly. cong F f p \<and> cong G g p \<and> cong (F * G) h (p ^ n)"
  sorry

end
