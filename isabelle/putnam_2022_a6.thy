theory putnam_2022_a6 imports Complex_Main
begin

(* uses (nat \<Rightarrow> real) instead of (Fin (2*n) \<Rightarrow> real) *)
definition putnam_2022_a6_solution :: "nat \<Rightarrow> nat" where "putnam_2022_a6_solution \<equiv> undefined"
(* (\<lambda>n::nat. n) *)
theorem putnam_2022_a6:
  fixes n :: nat
  and xlt :: "(nat \<Rightarrow> real) \<Rightarrow> bool"
  and mxsum :: "nat \<Rightarrow> (nat \<Rightarrow> real) \<Rightarrow> bool"
  and mexx :: "nat \<Rightarrow> bool"
  assumes npos: "n > 0"
  and hxlt: "\<forall>x::nat\<Rightarrow>real. xlt x = (-1 < x 1 \<and> (\<forall>i::nat\<in>{1..(2*n-1)}. x i < x (i + 1)) \<and> x (2*n) < 1)"
  and hmxsum: "\<forall>(m::nat)(x::nat\<Rightarrow>real). mxsum m x = (\<forall>k::nat\<in>{1..m}. ((\<Sum>i::nat=1..n. ((x (2*i))^(2*k-1) - (x (2*i-1))^(2*k-1))) = 1))"
  and hmexx: "\<forall>m::nat. mexx m = (\<exists>x::nat\<Rightarrow>real. xlt x \<and> mxsum m x)"
  shows "(GREATEST m::nat. mexx m) = putnam_2022_a6_solution n"
  sorry

end
