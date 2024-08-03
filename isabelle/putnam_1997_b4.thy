theory putnam_1997_b4 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"

begin

theorem putnam_1997_b4:
  fixes a :: "nat \<Rightarrow> nat \<Rightarrow> int"
  assumes ha : "\<forall> m n :: nat. a m n = coeff ((monom 1 0 + monom 1 1 + monom 1 2)^m) n"
  shows "\<forall> k :: nat \<ge> 0. (\<Sum> i \<in> {0..nat \<lfloor>(2*(rat_of_nat k))/(rat_of_nat 3)\<rfloor>}. (-1)^i * (a (k-i) i)) \<in> {0 :: real..1}" 
  sorry

end