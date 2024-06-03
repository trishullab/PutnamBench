theory putnam_1983_a5 imports Complex_Main

begin

theorem putnam_1983_a5:
  shows "( True ) \<longleftrightarrow> (\<exists> \<alpha> :: real. \<alpha> > 0 \<and> (\<forall> n :: nat. n > 0 \<longrightarrow> even (\<lfloor>\<alpha>^n\<rfloor> - n)))" 
  sorry

end