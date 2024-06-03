theory putnam_1982_b4 imports Complex_Main
begin

theorem putnam_1982_b4:
  fixes hn::"(int set) \<Rightarrow> bool"
  defines "hn \<equiv> \<lambda>n. (\<forall>k::int. (\<Prod>i \<in> n. i) dvd (\<Prod>i \<in> n. (i + k)))"
  shows "((\<forall>n::(int set). hn n \<longrightarrow> (\<exists>i \<in> n. abs(i) = 1)) \<longleftrightarrow> fst ( True, True )) \<and>
    ((\<forall>n::(int set). (hn n \<and> (\<forall>i \<in> n. i > 0)) \<longrightarrow> n = {1..card n})) \<longleftrightarrow> snd ( True, True )"
  sorry

end