theory putnam_1986_a6 imports Complex_Main "HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1986_a6_solution::"(nat\<Rightarrow>nat) \<Rightarrow> nat \<Rightarrow> real" where "putnam_1986_a6_solution \<equiv> undefined"
(* \<lambda>b. \<lambda>n. (\<Prod>i=1..n. b i) / fact n *)
theorem putnam_1986_a6:
  fixes n::nat and a::"nat\<Rightarrow>real" and b::"nat\<Rightarrow>nat" and f::"real poly"
  assumes npos : "n > 0"
    and bpos : "\<forall>i \<in> {1..n::nat}. b i > 0"
    and binj : "\<forall>i \<in> {1..n::nat}. \<forall>j \<in> {1..n::nat}. b i = b j \<longrightarrow> i = j"
    and hf : "\<forall>x::real. (1 - x) ^ n * (poly f x) = 1 + (\<Sum>i=1..n. (a i) * x ^ (b i))"
  shows "poly f 1 = putnam_1986_a6_solution b n"
  sorry

end
