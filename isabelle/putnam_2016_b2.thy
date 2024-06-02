theory putnam_2016_b2 imports Complex_Main
begin

definition is_square::"int\<Rightarrow>bool" where "is_square n \<equiv> \<exists>x::nat. n = x * x"
definition squarish::"int\<Rightarrow>bool" where "squarish n \<equiv> is_square n \<or>
   (\<exists>w::int. is_square (abs (n - w * w)) \<and> (\<forall>v::nat. abs (n - w * w) \<le> abs (n - v * v)))"

definition putnam_2016_b2_solution::"(real \<times> real)" where "putnam_2016_b2_solution \<equiv> undefined"
(* (3/4, 4/3) *)
theorem putnam_2016_b2:
  fixes S::"nat\<Rightarrow>nat" and p::"real\<Rightarrow>real\<Rightarrow>bool"
  defines "S \<equiv> \<lambda>n::nat. card {i \<in> {1..n}. squarish i}"
    and "p \<equiv> \<lambda>a::real. \<lambda>b::real. a > 0 \<and> b > 0 \<and> ((\<lambda>n. S n / (n powr a)) \<longlonglongrightarrow>  b)"
  shows "(\<forall>a b::real. (a, b) = putnam_2016_b2_solution \<longleftrightarrow> p a b) \<or> (\<forall>a b::real. \<not> (p a b))"
  sorry

end
