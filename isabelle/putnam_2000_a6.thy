theory putnam_2000_a6 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_2000_a6:
  fixes f :: "int poly"
  and a :: "nat \<Rightarrow> int"
  assumes ha0: "a 0 = 0"
  and ha: "\<forall>n::nat. a (n + 1) = poly f (a n)"
  shows "(\<exists>m::nat>0. a m = 0) \<longrightarrow> (a 1 = 0 \<or> a 2 = 0)"
  sorry

end
