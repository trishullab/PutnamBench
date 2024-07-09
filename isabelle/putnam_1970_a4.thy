theory putnam_1970_a4 imports Complex_Main
begin

theorem putnam_1970_a4:
  fixes x :: "nat \<Rightarrow> real"
  assumes hxlim: "filterlim (\<lambda>n::nat. x n - x (n-2)) (nhds 0) at_top"
  shows "filterlim (\<lambda>n::nat. (x n - x (n-1)) / n) (nhds 0) at_top"
  sorry

end
