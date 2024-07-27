theory putnam_2004_a5 imports Complex_Main
begin

(* uses (nat \<times> nat) instead of (Fin m \<times> Fin n) *)
theorem putnam_2004_a5:
  fixes m n :: nat
  and adj :: "(nat \<times> nat) \<Rightarrow> (nat \<times> nat) \<Rightarrow> bool"
  and connected :: "((nat \<times> nat) \<Rightarrow> bool) \<Rightarrow> (nat \<times> nat) \<Rightarrow> (nat \<times> nat) \<Rightarrow> bool"
  and cmr :: "((nat \<times> nat) \<Rightarrow> bool) \<Rightarrow> nat"
  assumes mnpos: "m * n > 0"
  defines "adj \<equiv> (\<lambda>(a::nat,b::nat)(c::nat,d::nat). a < m \<and> b < n \<and> c < m \<and> d < n \<and> ((a = c \<and> dist b d = 1) \<or> (b = d \<and> dist a c = 1)))"
  and "connected \<equiv> (\<lambda>(C::(nat\<times>nat)\<Rightarrow>bool)(P::nat\<times>nat)(Q::nat\<times>nat). (\<exists>(S::(nat\<times>nat) list). length S > 0 \<and>
  S!0 = P \<and> last S = Q \<and> (\<exists>p::bool. \<forall>i::nat\<in>{0..((length S)-1)}. C (S!i) = p) \<and> (\<forall>i::nat\<in>{0..((length S)-2)}. adj (S!i) (S!(i+1)))))"
  and "cmr \<equiv> (\<lambda>C::(nat\<times>nat)\<Rightarrow>bool. card {R::(nat\<times>nat) set. (\<exists>P\<in>R. fst P < m \<and> snd P < n \<and> (\<forall>Q::nat\<times>nat. (Q \<in> R \<longleftrightarrow> connected C P Q)))})"
  shows "(\<Sum>C\<in>{C'::(nat\<times>nat)\<Rightarrow>bool. (\<forall>i::nat\<ge>m. \<forall>j::nat\<ge>n. C (i,j) = False)}. cmr C) > (2 ^ (m*n)) * (m*n / 8)"
  sorry

end
