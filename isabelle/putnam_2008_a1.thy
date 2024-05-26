theory putnam_2008_a1 imports Complex_Main

begin

theorem putnam_2008_a1:
  fixes f :: "real \<Rightarrow> real \<Rightarrow> real"
  assumes hf : "\<forall> x y z :: real. f x y + f y z + f z x = 0"
  shows "\<exists> g :: real \<Rightarrow> real. \<forall> x y :: real. f x y = g x - g y"
  sorry

end