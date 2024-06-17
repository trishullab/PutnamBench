theory putnam_1963_a4 imports Complex_Main "HOL-Library.Liminf_Limsup" "HOL-Library.Extended_Real"
begin

theorem putnam_1963_a4:
  fixes apos::"(nat\<Rightarrow>real) \<Rightarrow> bool" and f::"(nat\<Rightarrow>real) \<Rightarrow> nat \<Rightarrow> ereal"
  defines "apos \<equiv> \<lambda>a. \<forall>n. a n > 0"
    and "f \<equiv> \<lambda>a::(nat\<Rightarrow>real). \<lambda>n::nat. ereal (n * (((1 + a (n+1)) / (a n)) - 1))"
  shows "(\<forall>a::(nat\<Rightarrow>real). apos a \<longrightarrow> (limsup (f a)) \<ge> 1) \<and> (\<exists>a. apos a \<and> (limsup (f a)) = 1)"
  sorry

end