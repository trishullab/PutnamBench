theory putnam_1962_b1 imports Complex_Main
begin

theorem putnam_1962_b1:
  fixes p :: "nat \<Rightarrow> real \<Rightarrow> real"
    and x y :: real
    and n :: nat
  assumes h0 : "p 0 = (\<lambda> x :: real. 1)"
    and hp : "\<forall> n > 0. p n = (\<lambda> x :: real. \<Prod> i \<in> {0..n-1}. (x - i))"
  shows "p n (x + y) = (\<Sum> k \<in> {0..n}. (n choose k) * (p k x) * (p (n - k) y))"
  sorry

end