theory putnam_2013_b2 imports Complex_Main
begin

definition putnam_2013_b2_solution :: real where "putnam_2013_b2_solution \<equiv> undefined"
(* 3 *)
theorem putnam_2013_b2:
  fixes CN :: "nat \<Rightarrow> ((real \<Rightarrow> real) set)"
  and C :: "(real \<Rightarrow> real) set"
  defines "CN \<equiv> (\<lambda>N::nat. {f::real\<Rightarrow>real. (\<forall>x::real. f x \<ge> 0) \<and>
  (\<exists>a::real list. length a = N+1 \<and> (\<forall>n::nat\<in>{0..N}. 3 dvd n \<longrightarrow> a!n = 0) \<and>
  (\<forall>x::real. f x = 1 + (\<Sum>n::nat=1..N. a!n * cos (2*pi*n*x))))})"
  and "C \<equiv> \<Union>N::nat\<in>{1..}. CN N"
  shows "(GREATEST fzero::real. (\<exists>f\<in>C. fzero = f 0)) = putnam_2013_b2_solution"
  sorry

end
