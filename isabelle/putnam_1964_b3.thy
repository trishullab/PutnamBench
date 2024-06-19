theory putnam_1964_b3 imports Complex_Main
begin

theorem putnam_1964_b3:
  fixes f :: "real \<Rightarrow> real"
  assumes hf: "continuous_on UNIV f \<and> (\<forall>\<alpha>::real>0. filterlim (\<lambda>n::nat. f (n*\<alpha>)) (nhds 0) at_top)"
  shows "filterlim f (nhds 0) at_top"
  sorry

end
