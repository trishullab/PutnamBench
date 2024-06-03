theory putnam_2018_b2 imports Complex_Main
begin

theorem putnam_2018_b2:
  fixes n :: nat and f_n :: "complex \<Rightarrow> complex" and z :: complex
  defines "f_n \<equiv> \<lambda>x::complex. \<Sum>i=0..(n-1). (n - i) * x^i"
  assumes npos: "n > 0" and zunit: "norm(z) \<le> 1"
  shows "f_n(z) \<noteq> 0"
  sorry

end
