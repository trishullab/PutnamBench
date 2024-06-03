theory putnam_2015_a2 imports Complex_Main
"HOL-Computational_Algebra.Primes"
begin

(* there are several possible correct solutions; this is the one shown on the solutions document *)
theorem putnam_2015_a2:
  fixes a :: "nat \<Rightarrow> nat"
  assumes abase: "a 0 = 1 \<and> a 1 = 2"
  assumes arec: "\<forall>n::nat\<ge>2. a n = 4 * a (n-1) - a (n-2)"
  shows "odd ( 181 ) \<and> prime ( 181 ) \<and> ( 181 ) dvd (a 2015)"
  sorry

end
