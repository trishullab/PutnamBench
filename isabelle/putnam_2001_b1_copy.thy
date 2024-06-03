theory putnam_2001_b1 imports
Complex_Main
begin

theorem putnam_2001_b1:
  fixes n :: nat
  and nums :: "nat \<Rightarrow> nat \<Rightarrow> nat"
  and colors :: "nat \<Rightarrow> nat \<Rightarrow> nat"
  assumes npos: "n > 0"
  and neven: "even n"
  and hnums: "\<forall> k \<in> {0 ..< n}. \<forall> l \<in> {0 ..< n}. nums k l = k * n + l + 1"
  and hcolorsrng: "\<forall> k \<in> {0 ..< n}. \<forall> l \<in> {0 ..< n}. colors k l \<in> {0, 1}"
  and hcolorsrows: "\<forall> k \<in> {0 ..< n}. (\<Sum> l = 0 ..< n. colors k l) = n div 2"
  and hcolorscols: "\<forall> l \<in> {0 ..< n}. (\<Sum> k = 0 ..< n. colors k l) = n div 2"
  shows "(\<Sum> k = 0 ..< n. \<Sum> l = 0 ..< n. if colors k l = 0 then nums k l else 0) = (\<Sum> k = 0 ..< n. \<Sum> l = 0 ..< n. if colors k l = 1 then nums k l else 0)" 
  sorry

end