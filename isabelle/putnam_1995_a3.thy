theory putnam_1995_a3 imports Complex_Main
begin

(* uses (nat \<Rightarrow> int) instead of (Fin 9 \<Rightarrow> int) *)
theorem putnam_1995_a3:
  fixes relation :: "(nat \<Rightarrow> int) \<Rightarrow> (nat \<Rightarrow> int) \<Rightarrow> bool"
  and digits_to_num :: "(nat \<Rightarrow> int) \<Rightarrow> int"
  defines "digits_to_num \<equiv> (\<lambda>dig::nat\<Rightarrow>int. (\<Sum>i::nat=0..8. (dig i) * 10^i))"
  assumes hrelation: "\<forall>d e::nat\<Rightarrow>int. (relation d e \<longleftrightarrow> ((\<forall>i::nat\<in>{0..8}. d i < 10 \<and> d i \<ge> 0 \<and> e i < 10 \<and> e i \<ge> 0) \<and> (\<forall>i::nat\<in>{0..8}. 7 dvd (digits_to_num (\<lambda>j::nat. if j = i then e j else d j)))))"
  shows "\<forall>d e f::nat\<Rightarrow>int. ((relation d e \<and> relation e f) \<longrightarrow> (\<forall>i::nat\<in>{0..8}. 7 dvd (d i - f i)))"
  sorry

end
