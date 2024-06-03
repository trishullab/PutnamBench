theory putnam_1987_a2 imports
Complex_Main
begin

theorem putnam_1987_a2:
  fixes seqind :: "nat \<Rightarrow> nat"
  and seqsize :: "nat \<Rightarrow> nat"
  and f :: "nat \<Rightarrow> nat"
  and numdigits :: "nat \<Rightarrow> nat"
  assumes hseqind: "seqind 1 = 1 \<and> (\<forall> i \<ge> 2. seqind i = seqind (i - 1) + numdigits (i - 1))" 
  and hseqsize: "\<forall> i \<ge> 1. \<forall> j \<in> {0 .. numdigits i - 1}. seqsize (seqind i + j) = numdigits i"
  and hf: "\<forall> n :: nat. f n = seqsize (10 ^ n)"
  and hnumdigits: "\<forall> n \<ge> 1. numdigits n = (GREATEST k :: nat. 10 ^ k \<le> n) + 1" 
  shows "f 1987 = ( 1984 )" 
  sorry

end