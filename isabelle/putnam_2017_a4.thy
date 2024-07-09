theory putnam_2017_a4 imports
Complex_Main
begin

theorem putnam_2017_a4:
  fixes N :: nat
  and score :: "nat \<Rightarrow> nat"
  assumes hrng : "\<forall> i \<in> {0 .. 2 * N - 1}. score i \<in> {0 .. 10}"
  and hsurj: "\<forall> k \<in> {0 .. 10}. \<exists> i \<in> {0 .. 2 * N - 1}. score i = k"
  and havg: "(\<Sum> i = 0 .. (2 * N - 1). score i) / (2 * N) = 7.4"
  shows "\<exists> s \<subseteq> {0 .. 2 * N - 1}. card s = N \<and> (\<Sum> i \<in> s. score i) / N = 7.4 \<and> (\<Sum> i \<in> {0 .. 2 * N - 1} - s. score i) / N = 7.4" 
  sorry

end