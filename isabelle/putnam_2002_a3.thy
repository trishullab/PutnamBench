theory putnam_2002_a3 imports Complex_Main
begin

theorem putnam_2002_a3:
  fixes n Tn :: "int"
  defines "Tn \<equiv> card {S :: int set. S \<subseteq> {1..n} \<and> S \<noteq> {} \<and> (\<exists> k :: int. k = (real 1)/(card S) * (\<Sum> s \<in> S. s))}"
  assumes hn : "n \<ge> 2"
  shows "even (Tn - n)"
  sorry

end