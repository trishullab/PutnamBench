theory putnam_1976_b5 imports Complex_Main
begin

definition putnam_1976_b5_solution::"nat\<Rightarrow>(real \<Rightarrow> real)" where "putnam_1976_b5_solution \<equiv> undefined"
(* \<lambda>n. \<lambda>x. fact n *)
theorem putnam_1976_b5:
  shows "\<forall>n::nat. (\<lambda>x. (\<Sum>k=0..n. ((-1)^k * (n choose k)) * (x - k)^n)) = putnam_1976_b5_solution n"
  sorry

end