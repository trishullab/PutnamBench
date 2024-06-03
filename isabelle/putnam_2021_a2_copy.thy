theory putnam_2021_a2 imports Complex_Main
begin

theorem putnam_2021_a2:
  fixes g :: "real \<Rightarrow> real"
  assumes hg: "\<forall>x::real>0. filterlim (\<lambda>r::real. ((x+1) powr (r+1) - x powr (r+1)) powr (1/r)) (nhds (g x)) (nhds 0)"
  shows "filterlim (\<lambda>x::real. g x / x) (nhds ( exp 1 )) at_top"
  sorry

end
