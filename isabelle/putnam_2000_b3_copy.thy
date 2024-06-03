theory putnam_2000_b3 imports Complex_Main
"HOL-Analysis.Derivative"
begin

(* uses (nat \<Rightarrow> real) instead of (Fin (N + 1) \<Rightarrow> real) *)
theorem putnam_2000_b3:
  fixes N :: nat
  and a :: "nat \<Rightarrow> real"
  and f :: "real \<Rightarrow> real"
  and mult :: "(real \<Rightarrow> real) \<Rightarrow> real \<Rightarrow> nat"
  and M :: "nat \<Rightarrow> nat"
  assumes Npos: "N > 0"
  and haN: "a N \<noteq> 0"
  defines "f \<equiv> (\<lambda>t::real. (\<Sum>j::nat=1..N. a j * sin (2*pi*j*t)))"
  assumes hmult: "\<forall>(g::real\<Rightarrow>real)(t::real). ((\<exists>c::nat. (deriv^^c) g t \<noteq> 0) \<longrightarrow> mult g t = (LEAST k::nat. (deriv^^k) g t \<noteq> 0))"
  defines "M \<equiv> (\<lambda>k::nat. (\<Sum>\<^sub>\<infinity>t::real\<in>{0..<1}. mult ((deriv^^k) f) t))"
  shows "(\<forall>i j::nat. (i \<le> j \<longrightarrow> M i \<le> M j)) \<and> filterlim M (nhds (2*N)) at_top"
  sorry

end
