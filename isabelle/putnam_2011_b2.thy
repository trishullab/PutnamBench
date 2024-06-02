theory putnam_2011_b2 imports Complex_Main
"HOL-Computational_Algebra.Primes"
begin

definition putnam_2011_b2_solution :: "nat set" where "putnam_2011_b2_solution \<equiv> undefined"
(* {2, 5} *)
theorem putnam_2011_b2:
  fixes S :: "(nat \<times> nat \<times> nat) set"
  and t :: nat
  and t7inS :: bool
  assumes hS: "S \<equiv> {(p::nat,q::nat,r::nat). prime p \<and> prime q \<and> prime r \<and> (\<exists>x::rat. p*x^2 + q*x + r = 0)}"
  and ht7inS: "t7inS \<equiv> (card {s\<in>S. fst s = t \<or> fst (snd s) = t \<or> snd (snd s) = t} \<ge> 7)"
  shows "(prime t \<and> t7inS) \<longleftrightarrow> t \<in> putnam_2011_b2_solution"
  sorry

end
