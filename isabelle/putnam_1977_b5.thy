theory putnam_1977_b5 imports Complex_Main
begin

theorem putnam_1977_b5:
  fixes n :: "nat"
    and a :: "nat \<Rightarrow> real"
    and A :: "real"
  assumes hn : "n > 1"
    and hA : "A + (\<Sum> i \<in> {1..n}. (a i)^2) < 1/(real n - 1) * (\<Sum> i \<in> {1..n}. a i)^2"
  shows "\<forall> i \<in> {1 :: nat..n}. \<forall> j \<in> {1 :: nat..n}. i < j \<longrightarrow> A < 2 * (a i) * (a j)"
  sorry

end