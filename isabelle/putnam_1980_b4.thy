theory putnam_1980_b4 imports
Complex_Main
begin

theorem putnam_1980_b4:
  fixes X :: "'t set"
  and A :: "nat \<Rightarrow> 't set"
  assumes Xfin: "finite X"
  and hX: "card X \<ge> 10"
  and hA: "\<forall> i \<in> {1 .. 1066}. A i \<subseteq> X \<and> card (A i) > (1 / 2) * card X"
  shows "\<exists> Y :: 't set. Y \<subseteq> X \<and> card Y = 10 \<and> (\<forall> i \<in> {1 .. 1066}. \<exists> y \<in> Y. y \<in> A i)"
  sorry

end