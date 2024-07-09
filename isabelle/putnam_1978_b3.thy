theory putnam_1978_b3 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_1978_b3:
  fixes P :: "nat \<Rightarrow> (real poly)"
    and a :: "nat \<Rightarrow> real"
  assumes hP1 : "P 1 = monom 1 0 + monom 1 1"
    and hP2 : "P 2 = monom 1 0 + monom 2 1"
    and hPodd : "\<forall> n :: nat \<ge> 1. P (2 * n + 1) = P (2 * n) + (monom (real n + 1) 1) * P (2 * n - 1)"
    and hPeven : "\<forall> n :: nat \<ge> 1. P (2 * n + 2) = P (2 * n + 1) + (monom (real n + 1) 1) * P (2 * n)"
    and hamax : "\<forall> n :: nat \<ge> 1. a n = (GREATEST x :: real. poly (P n) x = 0)"
    and ha0 : "a 0 = -2"  
  shows "strict_mono a \<and> filterlim a (nhds 0) at_top"
  sorry

end