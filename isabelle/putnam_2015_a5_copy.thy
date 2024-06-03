theory putnam_2015_a5 imports Complex_Main
"HOL-Computational_Algebra.Primes"
begin

theorem putnam_2015_a5:
  fixes q :: nat
  and Nq :: nat
  assumes qodd: "odd q"
  and qpos: "q > 0"
  and hNq: "Nq = card {a::nat. 0 < a \<and> a < (real q)/4 \<and> gcd a q = 1}"
  shows "odd Nq \<longleftrightarrow> (\<exists>p k::nat. q = p^k \<and> k > 0 \<and> prime p \<and> (p mod 8 = 5 \<or> p mod 8 = 7))"
  sorry

end
