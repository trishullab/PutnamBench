theory putnam_2005_a2 imports Complex_Main
begin

(* uses (nat \<Rightarrow> (int \<times> int)) instead of ({1..(3*n)} \<Rightarrow> (int \<times> int)) *)
definition putnam_2005_a2_solution :: "nat \<Rightarrow> nat" where "putnam_2005_a2_solution \<equiv> undefined"
(* (\<lambda>n::nat. if n = 1 then 0 else 2 ^ (n - 2)) *)
theorem putnam_2005_a2:
  fixes n :: nat
  and S :: "(int \<times> int) set"
  and unit :: "(int \<times> int) \<Rightarrow> (int \<times> int) \<Rightarrow> bool"
  and rooktour :: "(nat \<Rightarrow> (int \<times> int)) \<Rightarrow> bool"
  assumes npos: "n > 0"
  defines "S \<equiv> {1..n} \<times> {1..3}"
  and "unit \<equiv> (\<lambda>(a::int,b::int)(c::int,d::int). (a = c \<and> \<bar>d - b\<bar> = 1) \<or> (b = d \<and> \<bar>c - a\<bar> = 1))"
  and "rooktour \<equiv> (\<lambda>p::nat\<Rightarrow>(int\<times>int). (\<forall>P\<in>S. \<exists>!i::nat\<in>{1..(3*n)}. p i = P) \<and> (\<forall>i::nat\<in>{1..(3*n-1)}. unit (p i) (p (i+1))) \<and> p 0 = (0, 0) \<and> (\<forall>i::nat>(3*n). p i = (0, 0)))"
  shows "card {p::nat\<Rightarrow>(int\<times>int). rooktour p \<and> p 1 = (1, 1) \<and> p (3*n) = (n, 1)} = putnam_2005_a2_solution n"
  sorry

end
