theory putnam_1971_b2 imports Complex_Main
begin

theorem putnam_1971_b2:
  fixes S :: "real set"
  and P :: "(real \<Rightarrow> real) \<Rightarrow> bool"
  defines "S \<equiv> UNIV - {0,1}"
  and "P \<equiv> (\<lambda>F::real\<Rightarrow>real. (\<forall>x\<in>S. F x + F ((x-1)/x) = 1 + x))"
  shows "(\<forall>F\<in>( {(\<lambda>x::real. (x^3 - x^2 - 1) / (2*x*(x - 1)))} ). P F) \<and> (\<forall>f::real\<Rightarrow>real. (P f \<longrightarrow> (\<exists>F\<in>( {(\<lambda>x::real. (x^3 - x^2 - 1) / (2*x*(x - 1)))} ). (\<forall>x\<in>S. f x = F x))))"
  sorry

end
