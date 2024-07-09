theory putnam_2008_a5 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_2008_a5:
  fixes n :: "nat"
    and f g :: "real poly"
  assumes nge3 : "n \<ge> 3"
    and hfg : "\<exists> center z :: complex. z \<noteq> 0 \<and> (\<forall> k \<in> {1::nat..n}. poly f (real k) + \<i> * poly g (real k) = center + z * exp (\<i> * 2 * pi * k / n))"
  shows "degree f \<ge> n - 1 \<or> degree g \<ge> n - 1"
  sorry

end