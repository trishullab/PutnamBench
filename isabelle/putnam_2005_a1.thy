theory putnam_2005_a1 imports Complex_Main
begin

theorem putnam_2005_a1:
  shows "\<forall> n :: int. n > 0 \<longrightarrow> (\<exists> k :: nat. \<exists> a :: nat \<Rightarrow> (nat \<times> nat).
        n = (\<Sum> i\<in>{1..k}. 2^(fst (a i)) * 3^(snd (a i))) \<and>
        (\<forall> i \<in> {1..k}. \<forall> j \<in> {1..k}. i \<noteq> j \<longrightarrow> (\<not> (2^(fst (a i)) * 3^(snd (a i)) dvd 2^(fst (a j)) * 3^(snd (a j))))))"
  sorry

end