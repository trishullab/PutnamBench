theory putnam_2013_a2 imports Complex_Main
begin

theorem putnam_2013_a2:
  fixes S :: "nat set"
  and P :: "nat \<Rightarrow> (int list) \<Rightarrow> bool"
  and T :: "nat \<Rightarrow> (int set)"
  and f :: "nat \<Rightarrow> int"
  defines "S \<equiv> {n::nat. n > 0 \<and> \<not>(\<exists>m::int. m^2 = n)}"
  and "P \<equiv> (\<lambda>(n::nat)(a::int list). length a > 0 \<and> n < a!0 \<and>
  (\<exists>m::int. m^2 = n * (\<Prod>i::nat=0..((length a)-1). a!i)) \<and> (\<forall>i::nat\<in>{0..((length a)-2)}. a!i < a!(i+1)))"
  and "T \<equiv> (\<lambda>n::nat. {m::int. (\<exists>a::int list. P n a \<and> last a = m)})"
  assumes hf: "\<forall>n::nat\<in>S. f n = (LEAST r::int. r \<in> T n)"
  shows "inj_on f S"
  sorry

end
