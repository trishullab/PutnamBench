theory putnam_2009_a4 imports Complex_Main
begin

theorem putnam_2009_a4:
  shows "(\<forall>S::rat set. 0 \<in> S \<longrightarrow> (\<forall>x\<in>S. x+1 \<in> S \<and> x-1 \<in> S) \<longrightarrow> (\<forall>x\<in>S. x \<notin> {0, 1} \<longrightarrow> 1 / (x*(x-1)) \<in> S) \<longrightarrow> (\<forall>r::rat. r \<in> S)) \<longleftrightarrow> ( False )"
  sorry

end
