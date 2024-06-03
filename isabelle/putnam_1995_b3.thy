theory putnam_1995_b3 imports Complex_Main
"HOL-Analysis.Determinants"
begin

(* Boosted the domain/range of digits_set to nat *)
definition putnam_1995_b3_solution :: "nat \<Rightarrow> int" where "putnam_1995_b3_solution \<equiv> undefined"
(* (\<lambda>n::nat. if n = 1 then 45 else if n = 2 then (10 * 45^2) else 0) *)
theorem putnam_1995_b3:
  fixes n :: nat
  and digits_set :: "(nat \<Rightarrow> nat) set"
  and pnind :: "'n::finite \<Rightarrow> nat"
  and digits_to_matrix :: "(nat \<Rightarrow> nat) \<Rightarrow> (int^'n^'n)"
  assumes hn: "n > 0"
  defines "digits_set \<equiv> {f::nat\<Rightarrow>nat. f 0 \<noteq> 0 \<and> (\<forall>i::nat\<in>{0..(n^2-1)}. f i \<le> 9) \<and> (\<forall>i::nat\<ge>n^2. f i = 0)}"
  assumes pncard: "CARD('n) = n"
  and hpnind: "pnind ` UNIV = {0..(n-1)}"
  defines "digits_to_matrix \<equiv> (\<lambda>f::nat\<Rightarrow>nat. (\<chi> i j::'n. f ((pnind i) * n + (pnind j))))"
  shows "(\<Sum>f\<in>digits_set. det (digits_to_matrix f)) = putnam_1995_b3_solution n"
  sorry

end
