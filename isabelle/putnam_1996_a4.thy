theory putnam_1996_a4 imports Complex_Main
"HOL-Library.Cardinality"

begin

theorem putnam_1996_a4: 
  fixes S :: "('A::finite \<times> 'A \<times> 'A) set"
    and n :: "nat"
  assumes hA : "CARD('A) = n"
    and hSdistinct: "\<forall>a b c::'A. ((a, b, c) \<in> S \<longrightarrow> (a \<noteq> b \<and> b \<noteq> c \<and> a \<noteq> c))"
    and hS1 : " \<forall> a b c :: 'A. (a, b, c) \<in> S \<longleftrightarrow> (b, c, a) \<in> S"
    and hS2 : " \<forall> a b c :: 'A. a \<noteq> c \<longrightarrow> ((a, b, c) \<in> S \<longleftrightarrow> (c, b, a) \<notin> S)"
    and hS3 : " \<forall> a b c d :: 'A. ((a, b, c) \<in> S \<and> (c, d, a) \<in> S) \<longleftrightarrow> ((b, c, d) \<in> S \<and> (d, a, b) \<in> S)"
  shows "\<exists> g :: 'A \<Rightarrow> real. inj g \<and> (\<forall> a b c :: 'A. (g a < g b \<and> g b < g c) \<longrightarrow> (a, b, c) \<in> S)"
  sorry

end