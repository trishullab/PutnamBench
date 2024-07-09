theory putnam_1966_b2 imports
Complex_Main
begin

theorem putnam_1966_b2:
  fixes S :: "int \<Rightarrow> int set"
  defines "S \<equiv> \<lambda> n :: int. {n, n + 1, n + 2, n + 3, n + 4, n + 5, n + 6, n + 7, n + 8, n + 9}"
  shows "\<forall> n :: int. n > 0 \<longrightarrow> (\<exists> k \<in> S n. \<forall> m \<in> S n. k \<noteq> m \<longrightarrow> coprime m k)"
  sorry

end