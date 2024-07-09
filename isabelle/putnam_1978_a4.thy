theory putnam_1978_a4 imports Complex_Main
begin

theorem putnam_1978_a4:
  fixes bypass :: "('a set) \<Rightarrow> ('a \<Rightarrow> 'a \<Rightarrow> 'a) \<Rightarrow> bool"
  fixes binop :: "('a set) \<Rightarrow> ('a \<Rightarrow> 'a \<Rightarrow> 'a) \<Rightarrow> bool"
  defines "bypass \<equiv> \<lambda> S Smul. (\<forall> a \<in> S. \<forall> b \<in> S. \<forall> c \<in> S. \<forall> d \<in> S. Smul (Smul a b) (Smul c d) = Smul a d)"
  assumes pauncount : "\<exists> pamap :: 'a \<Rightarrow> real. surj pamap"
  shows "(\<forall> (S :: 'a set) (Smul :: 'a \<Rightarrow> 'a \<Rightarrow> 'a). ((binop S Smul \<and> bypass S Smul)
        \<longrightarrow> (\<forall> a \<in> S. \<forall> b \<in> S. \<forall> c \<in> S. Smul a b = c \<longrightarrow> (Smul c c = c \<and> (\<forall> d \<in> S. Smul a d = Smul c d))))) \<and>
        (\<exists> (S :: 'a set) (Smul :: 'a \<Rightarrow> 'a \<Rightarrow> 'a). 
        binop S Smul \<and> bypass S Smul \<and> finite S \<and> (\<forall> a \<in> S. Smul a a = a) \<and> (\<exists> a \<in> S. \<exists> b \<in> S. Smul a b = a \<and> a \<noteq> b) \<and> (\<exists> a \<in> S. \<exists> b \<in> S. Smul a b \<noteq> a))"
  sorry

end