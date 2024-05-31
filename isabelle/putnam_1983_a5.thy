theory putnam_1983_a5 imports Complex_Main

begin

definition putnam_1983_a5_solution :: "bool" where
"putnam_1983_a5_solution \<equiv> undefined"
(* True *)
theorem putnam_1983_a5:
  shows "putnam_1983_a5_solution \<longleftrightarrow> (\<exists> \<alpha> :: real. \<alpha> > 0 \<and> (\<forall> n :: nat. n > 0 \<longrightarrow> even (\<lfloor>\<alpha>^n\<rfloor> - n)))" 
  sorry

end