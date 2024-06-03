theory putnam_2008_a4 imports Complex_Main
begin

theorem putnam_2008_a4:
  fixes f :: "real \<Rightarrow> real"
  assumes hf: "f \<equiv> (\<lambda>x::real. if x \<le> exp 1 then x else (x * f (ln x)))"
  shows "(\<exists>r::real. filterlim (\<lambda>N::nat. (\<Sum>n::nat=1..N. 1/f n)) (nhds r) at_top) \<longleftrightarrow> ( False )"
  sorry

end
