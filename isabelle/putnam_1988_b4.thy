theory putnam_1988_b4 imports
Complex_Main
begin

theorem putnam_1988_b4:
  fixes a :: "nat \<Rightarrow> real"
  and appos :: "(nat \<Rightarrow> real) \<Rightarrow> bool"
  and apconv :: "(nat \<Rightarrow> real) \<Rightarrow> bool"
  and apposconv :: "(nat \<Rightarrow> real) \<Rightarrow> bool"
  defines "appos \<equiv> \<lambda> a' :: nat \<Rightarrow> real. \<forall> n \<ge> 1. a' n > 0"
  and "apconv \<equiv> \<lambda> a' :: nat \<Rightarrow> real. convergent (\<lambda> N :: nat. \<Sum> n = 1..N. a' n)"
  and "apposconv \<equiv> \<lambda> a'. appos a' \<and> apconv a'"
  shows "apposconv a \<longrightarrow> apposconv (\<lambda> n :: nat. (a n) powr (n / (n + 1)))" 
  sorry

end