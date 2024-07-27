theory putnam_1998_a2 imports Complex_Main
"HOL-Analysis.Lebesgue_Measure"
begin

theorem putnam_1998_a2:
  fixes quadrant :: "(real^2) \<Rightarrow> bool"
  and isarc :: "(real^2) \<Rightarrow> (real^2) \<Rightarrow> bool"
  and arc :: "(real^2) \<Rightarrow> (real^2) \<Rightarrow> ((real^2) set)"
  and A :: "(real^2) \<Rightarrow> (real^2) \<Rightarrow> real"
  and B :: "(real^2) \<Rightarrow> (real^2) \<Rightarrow> real"
  defines "quadrant \<equiv> (\<lambda>P::real^2. P$1 > 0 \<and> P$2 > 0 \<and> dist 0 P = 1)"
  and "isarc \<equiv> (\<lambda>P Q::real^2. quadrant P \<and> quadrant Q \<and> P$1 > Q$1)"
  and "arc \<equiv> (\<lambda>P Q::real^2. {R::real^2. quadrant R \<and> P$1 > R$1 \<and> R$1 > Q$1})"
  and "A \<equiv> (\<lambda>P Q::real^2. measure lebesgue {S::real^2. (\<exists>R\<in>(arc P Q). R$1 = S$1 \<and> R$2 > S$2 \<and> S$2 > 0)})"
  and "B \<equiv> (\<lambda>P Q::real^2. measure lebesgue {S::real^2. (\<exists>R\<in>(arc P Q). R$2 = S$2 \<and> R$1 > S$1 \<and> S$1 > 0)})"
  shows "\<exists>f::real\<Rightarrow>real. \<forall>P Q::real^2. (isarc P Q \<longrightarrow> A P Q + B P Q = f (arctan (Q$2/Q$1) - arctan (P$2/P$1)))"
  sorry

end
