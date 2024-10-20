theory putnam_1977_a3 imports Complex_Main
begin

definition putnam_1977_a3_solution::"(real\<Rightarrow>real) \<Rightarrow> (real\<Rightarrow>real) \<Rightarrow> (real\<Rightarrow>real)" where "putnam_1977_a3_solution \<equiv> undefined"
(* \<lambda>f. \<lambda>g. \<lambda>x. g x - f (x-3) + f (x-1) + f (x+1) - f (x+3) *)
theorem putnam_1977_a3:
  fixes f g h :: "real\<Rightarrow>real"
  assumes hf : "\<forall> x. f x = (h (x+1) + h (x-1)) / 2"
    and hg : "\<forall> x. g x = (h (x+4) + h (x-4)) / 2"
  shows "h = putnam_1977_a3_solution f g"
  sorry

end