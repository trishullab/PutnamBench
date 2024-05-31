theory putnam_1974_b4 imports Complex_Main
begin

theorem putnam_1974_b4:
  fixes f :: "(real \<times> real) \<Rightarrow> real"
  assumes hfcontx: "\<forall>y::real. continuous_on UNIV (\<lambda>x::real. f (x,y))"
  assumes hfconty: "\<forall>x::real. continuous_on UNIV (\<lambda>y::real. f (x,y))"
  shows "\<exists>g::nat\<Rightarrow>((real\<times>real)\<Rightarrow>real). (\<forall>n::nat. continuous_on UNIV (g n)) \<and> (\<forall>x y::real. filterlim (\<lambda>n::nat. g n (x,y)) (nhds (f (x,y))) at_top)"
  sorry

end
