theory putnam_1982_a6 imports Complex_Main
begin

definition putnam_1982_a6_solution::bool where "putnam_1982_a6_solution \<equiv> undefined"
(* False *)
theorem putnam_1982_a6:
  fixes hb::"(nat\<Rightarrow>nat) \<Rightarrow> bool" and hx limx::"(nat\<Rightarrow>real) \<Rightarrow> bool" and limb::"(nat\<Rightarrow>nat) \<Rightarrow> (nat\<Rightarrow>real) \<Rightarrow> bool"
  defines "hb \<equiv> \<lambda>b. bij_betw b {1..} {1..}"
    and "hx \<equiv> \<lambda>x. strict_antimono_on {1..} (\<lambda>n. abs(x n))"
    and "limb \<equiv> \<lambda>b::nat\<Rightarrow>nat. \<lambda>x::nat\<Rightarrow>real. (\<lambda>n. (abs (b n - n)) * (abs (x n))) \<longlonglongrightarrow> 0"
    and "limx \<equiv> \<lambda>x. (\<lambda>n. (\<Sum>k=1..n. x k)) \<longlonglongrightarrow> 1"
  shows "(\<forall>b::nat\<Rightarrow>nat. \<forall>x::nat\<Rightarrow>real. hb b \<and> hx x \<and> limb b x \<and> limx x \<longrightarrow> ((\<lambda>n. (\<Sum>k=1..n. x (b k))) \<longlonglongrightarrow> 1)) \<longleftrightarrow> putnam_1982_a6_solution"
  sorry

end