theory putnam_2002_a6 imports
Complex_Main
begin

theorem putnam_2002_a6:
  fixes f :: "nat \<Rightarrow> nat \<Rightarrow> nat"
  and digitlength :: "nat \<Rightarrow> nat \<Rightarrow> nat"
  defines "digitlength \<equiv> \<lambda> b n. LEAST k :: nat. n < b ^ k"
  assumes hf: "\<forall> b :: nat. f b 1 = 1 \<and> f b 2 = 2 \<and> (\<forall> n \<in> {3..}. f b n = n * f b (digitlength b n))"
  shows "{b \<in> {2..}. convergent (\<lambda> m :: nat. \<Sum> n = 1..m. 1 / f b n)} = ( {2} )"
  sorry

end