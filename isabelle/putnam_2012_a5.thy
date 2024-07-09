theory putnam_2012_a5 imports
Complex_Main
"HOL-Computational_Algebra.Primes"
"HOL-Analysis.Finite_Cartesian_Product"
begin

definition putnam_2012_a5_solution :: "(nat \<times> nat) set" where "putnam_2012_a5_solution \<equiv> undefined"
(* {q. fst q = 1} \<union> {(2, 2)} *)
theorem putnam_2012_a5:
  fixes n p :: nat
  and G :: "('p::field)^'n^'n \<Rightarrow> 'p^'n \<Rightarrow> 'p^'n \<Rightarrow> 'p^'n"
  defines "G \<equiv> \<lambda> (M :: 'p^'n^'n) (v :: 'p^'n) (x :: 'p^'n). v + M *v x" 
  assumes pcard: "CARD('p) = p"
  and ncard: "CARD('n) = n"
  and hn: "n > 0"
  and hp: "prime p"
  shows "(n, p) \<in> putnam_2012_a5_solution \<longleftrightarrow>
          (\<exists> M :: 'p^'n^'n.
          \<exists> v :: 'p^'n.
          \<not>(\<exists> i \<in> {1..p^n}. \<exists> j \<in> {1..p^n}. i \<noteq> j \<and> ((G M v) ^^ i) 0 = ((G M v) ^^ j) 0))"
  sorry

end