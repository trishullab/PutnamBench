theory putnam_2019_b6 imports Complex_Main
begin

(* uses (nat \<Rightarrow> int) instead of (Fin n \<Rightarrow> int) *)
definition putnam_2019_b6_solution :: "nat set" where "putnam_2019_b6_solution \<equiv> undefined"
(* {1..} *)
theorem putnam_2019_b6:
  fixes n :: nat
  and neighbors :: "(nat \<Rightarrow> int) \<Rightarrow> (nat \<Rightarrow> int) \<Rightarrow> bool"
  assumes hneighbors: "\<forall>p q::nat\<Rightarrow>int. neighbors p q = (\<exists>i::nat\<in>{0..(n-1)}. \<bar>p i - q i\<bar> = 1 \<and> (\<forall>j::nat\<in>{0..(n-1)}. (j \<noteq> i \<longrightarrow> p j = q j)))"
  shows "(n \<ge> 1 \<and> (\<exists>S::(nat\<Rightarrow>int) set. (\<forall>p\<in>S. \<forall>q::nat\<Rightarrow>int. (neighbors p q \<longrightarrow> q \<notin> S)) \<and> (\<forall>p::nat\<Rightarrow>int. (p \<notin> S \<longrightarrow> card {q\<in>S. neighbors p q} = 1)))) \<longleftrightarrow> n \<in> putnam_2019_b6_solution"
  sorry

end
