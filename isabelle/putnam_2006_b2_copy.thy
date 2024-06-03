theory putnam_2006_b2 imports
Complex_Main
begin

theorem putnam_2006_b2:
  fixes n :: nat
  and X :: "real set"
  assumes npos: "n > 0"
  and hXcard: "finite X \<and> card X = n"
  shows "\<exists> S \<subseteq> X. (S \<noteq> {}) \<and> (\<exists> m :: int. \<bar>m + (\<Sum> s \<in> S. s)\<bar> \<le> 1 / (n + 1))"
  sorry

end