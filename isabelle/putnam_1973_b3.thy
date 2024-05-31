theory putnam_1973_b3 imports Complex_Main
"HOL-Computational_Algebra.Primes"
begin

theorem putnam_1973_b3:
  fixes p :: nat
  assumes pgt1: "p > 1"
  and hprime: "\<forall>x::nat\<in>{0..<p}. prime (x^2 - x + p)"
  shows "\<exists>!triple::int\<times>int\<times>int. let (a,b,c) = triple in (b^2 - 4*a*c = 1 - 4*p \<and> 0 < a \<and> a \<le> c \<and> -a \<le> b \<and> b < a)"
  sorry

end
