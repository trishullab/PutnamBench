theory putnam_2013_a6 imports Complex_Main
begin

theorem putnam_2013_a6:
  fixes w :: "int \<Rightarrow> int \<Rightarrow> int"
  and A :: "((int \<times> int) set) \<Rightarrow> int"
  assumes hwn1: "w (-2) (-2) = -1 \<and> w 2 (-2) = -1 \<and> w (-2) 2 = -1 \<and> w 2 2 = -1"
  and hwn2: "w (-1) (-2) = -2 \<and> w 1 (-2) = -2 \<and> w (-2) (-1) = -2 \<and> w 2 (-1) = -2 \<and> w (-2) 1 = -2 \<and> w 2 1 = -2 \<and> w (-1) 2 = -2 \<and> w 1 2 = -2"
  and hw2: "w 0 (-2) = 2 \<and> w (-2) 0 = 2 \<and> w 2 0 = 2 \<and> w 0 2 = 2"
  and hw4: "w (-1) (-1) = 4 \<and> w 1 (-1) = 4 \<and> w (-1) 1 = 4 \<and> w 1 1 = 4"
  and hwn4: "w 0 (-1) = -4 \<and> w (-1) 0 = -4 \<and> w 1 0 = -4 \<and> w 0 1 = -4"
  and hw12: "w 0 0 = 12"
  and hw0: "\<forall>a b::int. (\<bar>a\<bar> > 2 \<or> \<bar>b\<bar> > 2) \<longrightarrow> w a b = 0"
  and hA: "\<forall>S::(int\<times>int) set. finite S \<longrightarrow> A S = (\<Sum>s\<in>S. \<Sum>s'\<in>S. w (fst s-fst s') (snd s-snd s'))"
  shows "\<forall>S::(int\<times>int) set. (finite S \<and> S \<noteq> {}) \<longrightarrow> A S > 0"
  sorry

end
