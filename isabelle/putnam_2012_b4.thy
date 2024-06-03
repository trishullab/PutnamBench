theory putnam_2012_b4 imports Complex_Main
begin

definition putnam_2012_b4_solution::bool where "putnam_2012_b4_solution \<equiv> undefined"
(* True *)
theorem putnam_2012_b4:
  fixes a::"nat\<Rightarrow>real"
  assumes ha0 : "a 0 = 1"
    and han : "\<forall>n::nat. a (n+1) = a n + exp (-a n)"
  shows "(convergent (\<lambda>n. a n - ln n)) \<longleftrightarrow> putnam_2012_b4_solution"
  sorry

end
