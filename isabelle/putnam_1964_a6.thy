theory putnam_1964_a6 imports Complex_Main
begin

theorem putnam_1964_a6:
  fixes S :: "real set"
  and pairs :: "(real \<times> real) set"
  and distance :: "(real \<times> real) \<Rightarrow> real"
  assumes Sfinite: "finite S"
  defines "pairs \<equiv> {(a::real, b::real). a \<in> S \<and> b \<in> S \<and> a < b}"
  and "distance \<equiv> (\<lambda>(a::real, b::real). b - a)"
  assumes hrepdist: "\<forall>p\<in>pairs. ((\<exists>m\<in>pairs. distance m > distance p) \<longrightarrow> (\<exists>q\<in>pairs. q \<noteq> p \<and> distance p = distance q))"
  shows "\<forall>p\<in>pairs. \<forall>q\<in>pairs. (q \<noteq> p \<longrightarrow> distance p / distance q \<in> \<rat>)"
  sorry

end
