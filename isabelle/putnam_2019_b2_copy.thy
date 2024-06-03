theory putnam_2019_b2 imports Complex_Main
begin

theorem putnam_2019_b2:
  fixes a :: "nat \<Rightarrow> real"
  defines "a \<equiv> (\<lambda>n::nat. (\<Sum>k::int=1..(n-1). sin ((2*k-1)*pi/(2*n)) / ((cos ((k-1)*pi/(2*n)))^2 * (cos (k*pi/(2*n)))^2)))"
  shows "filterlim (\<lambda>n::nat. (a n)/n^3) (nhds ( 8 / pi^3 )) at_top"
  sorry

end
