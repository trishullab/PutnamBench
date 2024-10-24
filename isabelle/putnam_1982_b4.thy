theory putnam_1982_b4 imports Complex_Main
begin

definition putnam_1982_b4_solution::"bool \<times> bool" where "putnam_1982_b4_solution \<equiv> undefined"
(* True, True *)
theorem putnam_1982_b4:
  fixes hn::"(int set) \<Rightarrow> bool"
  defines "hn \<equiv> \<lambda>n. (\<exists> c :: int. c \<in> n) \<and> (\<forall>k::int. (\<Prod>i \<in> n. i) dvd (\<Prod>i \<in> n. (i + k)))"
  shows "((\<forall>n::(int set). hn n \<longrightarrow> (\<exists>i \<in> n. abs(i) = 1)) \<longleftrightarrow> fst putnam_1982_b4_solution) \<and>
    ((\<forall>n::(int set). (hn n \<and> (\<forall>i \<in> n. i > 0)) \<longrightarrow> n = {1..card n})) \<longleftrightarrow> snd putnam_1982_b4_solution"
  sorry

end