theory putnam_1994_a6 imports Complex_Main
"HOL-Combinatorics.Permutations"
begin

(* uses (nat \<Rightarrow> (int \<Rightarrow> int)) instead of (Fin 10 \<Rightarrow> (int \<Rightarrow> int)) and (nat \<Rightarrow> nat) instead of (Fin m \<Rightarrow> Fin 10) and (Fin 10 \<Rightarrow> Fin 2) *)
theorem putnam_1994_a6:
  fixes f :: "nat \<Rightarrow> (int \<Rightarrow> int)"
  and mijcomp :: "nat \<Rightarrow> (nat \<Rightarrow> nat) \<Rightarrow> nat \<Rightarrow> (int \<Rightarrow> int)"
  and F :: "(int \<Rightarrow> int) set"
  assumes hfperm: "\<forall>i::nat\<in>{0..9}. (f i) permutes UNIV"
  and hfcomp: "\<forall>n::int. \<exists>m::nat\<ge>1. \<exists>i::nat\<Rightarrow>nat. (\<forall>j::nat\<in>{0..(m-1)}. i j \<in> {0..9}) \<and> (mijcomp m i 0) 0 = n"
  and hmijcomp: "\<forall>m::nat\<ge>1. \<forall>(i::nat\<Rightarrow>nat). \<forall>j::nat\<in>{0..(m-1)}. mijcomp m i j = (if (j = m-1) then (f (i j)) else (f (i j) \<circ> mijcomp m i (j+1)))"
  and hF: "F \<equiv> {g::int\<Rightarrow>int. (\<exists>e::nat\<Rightarrow>nat. (\<forall>i::nat\<in>{0..9}. e i = 0 \<or> e i = 1) \<and> (g = (f 0)^^(e 0) \<circ> (f 1)^^(e 1) \<circ> (f 2)^^(e 2) \<circ> (f 3)^^(e 3) \<circ> (f 4)^^(e 4) \<circ> (f 5)^^(e 5) \<circ> (f 6)^^(e 6) \<circ> (f 7)^^(e 7) \<circ> (f 8)^^(e 8) \<circ> (f 9)^^(e 9)))}"
  shows "\<forall>A::int set. (finite A \<and> A \<noteq> {}) \<longrightarrow> (card {g\<in>F. g ` A = A} \<le> 512)"
  sorry

end
