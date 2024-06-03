theory putnam_1993_b5 imports Complex_Main "HOL-Analysis.Linear_Algebra"
begin

theorem putnam_1993_b5:
  fixes pdist::"(real \<times> real) \<Rightarrow> (real \<times> real) \<Rightarrow> (real \<times> real) \<Rightarrow> (real \<times> real) \<Rightarrow> bool"
  defines "pdist \<equiv> \<lambda>A. \<lambda>B. \<lambda>C. \<lambda>D. (dist A B) \<in> \<int> \<and> (dist A C) \<in> \<int> \<and> (dist A D) \<in> \<int> \<and>
    (dist B C) \<in> \<int> \<and> (dist B D) \<in> \<int> \<and> (dist C D) \<in> \<int> \<and> 
    odd (round (dist A B)) \<and> odd (round (dist A C)) \<and> odd (round (dist A D)) \<and> 
    odd (round (dist B C)) \<and> odd (round (dist B D)) \<and> odd (round (dist C D))"
  shows "\<not>(\<exists>A B C D. pdist A B C D)"
  sorry

end