theory putnam_1972_a3 imports Complex_Main
begin

(* uses (real \<Rightarrow> real) instead of ({0..1} \<Rightarrow> real) *)
definition putnam_1972_a3_solution :: "(real \<Rightarrow> real) set" where "putnam_1972_a3_solution \<equiv> undefined"
(* {f::real\<Rightarrow>real. (\<exists>A B::real. \<forall>x::real\<in>{0..1}. f x = A*x + B)} *)
theorem putnam_1972_a3:
  fixes climit_exists :: "(nat \<Rightarrow> real) \<Rightarrow> bool"
  and supercontinuous :: "(real \<Rightarrow> real) \<Rightarrow> bool"
  defines "climit_exists \<equiv> (\<lambda>x::nat\<Rightarrow>real. (\<exists>C::real. filterlim (\<lambda>n::nat. (\<Sum>i::nat\<in>{0..(n-1)}. x i)/n) (nhds C) at_top))"
  and "supercontinuous \<equiv> (\<lambda>f::real\<Rightarrow>real. (\<forall>x::nat\<Rightarrow>real. ((\<forall>i::nat. x i \<in> {0..1}) \<longrightarrow> climit_exists x \<longrightarrow> climit_exists (\<lambda>i::nat. f (x i)))))"
  shows "{f::real\<Rightarrow>real. supercontinuous f} = putnam_1972_a3_solution"
  sorry

end
