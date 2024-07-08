theory putnam_2008_a3 imports Complex_Main
begin

theorem putnam_2008_a3:
  fixes n :: "nat"
    and a :: "nat \<Rightarrow> nat"
    and cont :: "(nat \<Rightarrow> nat) \<Rightarrow> bool"
    and init trans :: "(nat \<Rightarrow> nat \<Rightarrow> nat) \<Rightarrow> bool"
  defines "cont \<equiv> \<lambda> s. \<exists> j \<in> {0..n-1}. \<exists> k \<in> {0..n-1}. j < k \<and> (\<not>(s j dvd s k))"
    and "init \<equiv> \<lambda> P. P 0 = a"
    and "trans \<equiv> \<lambda> P. \<forall> t :: nat. (cont (P t) \<longrightarrow> (\<exists> j \<in> {0..n-1}. \<exists> k \<in> {0..n-1}. j < k \<and> (\<not> (P t j dvd P t k)) \<and> P (t + 1) j = gcd (P t j) (P t k) 
        \<and> P (t + 1) k = lcm (P t j) (P t k) \<and> (\<forall> i \<in> {0..n-1}. i \<noteq> j \<longrightarrow> i \<noteq> k \<longrightarrow> P (t + 1) i = P t i)))"
  assumes npos : "n > 0"
    and apos : "\<forall> i \<in> {0..n-1}. a i > 0"
  shows "\<exists> f :: nat \<Rightarrow> nat. \<forall> P :: nat \<Rightarrow> nat \<Rightarrow> nat. init P \<longrightarrow> trans P \<longrightarrow> (\<exists> t :: nat. (\<not>(cont (P t))) \<and> (\<forall> i \<in> {0..n-1}. P t i = f i))"
  sorry

end