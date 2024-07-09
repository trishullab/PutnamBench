theory putnam_2019_b3 imports
Complex_Main
"HOL-Analysis.Determinants"
begin

theorem putnam_2019_b3:
  fixes n :: nat
  and Q :: "real^'n^'n"
  and u :: "real^1^'n"
  and P :: "real^'n^'n"
  defines "P \<equiv> mat 1 - 2 *s u ** (transpose u)" 
  assumes hn: "n > 0"
  and hncard: "CARD('n) = n"
  and hQ0: "\<forall> i j :: 'n. i \<noteq> j \<longrightarrow> scalar_product (Q$i) (Q$j) = 0 \<and> scalar_product ((transpose Q)$i) ((transpose Q)$j) = 0" 
  and hQ1: "\<forall> i :: 'n. scalar_product (Q$i) (Q$i) = 1 \<and> scalar_product ((transpose Q)$i) ((transpose Q)$i) = 1"
  and hu: "(transpose u) ** u = 1"
  shows "det (Q - mat 1) \<noteq> 0 \<longrightarrow> det (P ** Q - mat 1) \<noteq> 0"
  sorry

end