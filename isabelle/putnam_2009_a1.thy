theory putnam_2009_a1 imports Complex_Main
begin

definition putnam_2009_a1_solution :: bool where "putnam_2009_a1_solution \<equiv> undefined"
(* True *)
theorem putnam_2009_a1:
  shows "(\<forall>f::(real\<times>real)\<Rightarrow>real. (\<forall>A v::real\<times>real. v \<noteq> (0, 0) \<longrightarrow> f (fst A, snd A) + f (fst A+fst v, snd A+snd v) + f (fst A+fst v-snd v, snd A+snd v+fst v) + f (fst A-snd v, snd A+fst v) = 0) \<longrightarrow> (\<forall>P::real\<times>real. f P = 0)) \<longleftrightarrow> putnam_2009_a1_solution"
  sorry

end
