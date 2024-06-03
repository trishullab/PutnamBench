theory putnam_2010_b2 imports Complex_Main "HOL-Analysis.Analysis"
begin

theorem putnam_2010_b2:
  fixes ABCintcoords::"(real \<times> real) \<Rightarrow> (real \<times> real) \<Rightarrow> (real \<times> real) \<Rightarrow> bool"
    and ABCintdists::"(real \<times> real) \<Rightarrow> (real \<times> real) \<Rightarrow> (real \<times> real) \<Rightarrow> bool"
    and ABCall::"(real \<times> real) \<Rightarrow> (real \<times> real) \<Rightarrow> (real \<times> real) \<Rightarrow> bool"
  defines "ABCintcoords \<equiv> \<lambda>A. \<lambda>B. \<lambda>C. (fst A) \<in> \<int> \<and> (snd A) \<in> \<int> \<and> (fst B) \<in> \<int> \<and> (snd B) \<in> \<int>  \<and> (fst C) \<in> \<int> \<and> (snd C) \<in> \<int>"
    and "ABCintdists \<equiv> \<lambda>A. \<lambda>B. \<lambda>C. (dist A B) \<in> \<int> \<and> (dist B C) \<in> \<int> \<and> (dist A C) \<in> \<int>"
    and "ABCall \<equiv> \<lambda>A. \<lambda>B. \<lambda>C. ABCintcoords A B C \<and> ABCintdists A B C \<and> \<not> collinear {A, B, C}"
  shows "( 3 ) = (LEAST abdist. \<exists>A B C. ABCall A B C \<and> abdist = (dist A B))"
  sorry

end