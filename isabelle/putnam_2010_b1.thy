theory putnam_2010_b1 imports Complex_Main
begin

definition putnam_2010_b1_solution :: bool where "putnam_2010_b1_solution \<equiv> undefined"
(* False *)
theorem putnam_2010_b1:
  shows "(\<exists>a::nat\<Rightarrow>real. \<forall>m::nat>0. (\<Sum>i::nat. (a i)^m) = m) \<longleftrightarrow> putnam_2010_b1_solution"
  sorry

end
