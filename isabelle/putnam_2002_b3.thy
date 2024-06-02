theory putnam_2002_b3 imports
Complex_Main
begin

theorem putnam_2002_b3:
  fixes e :: real
  and f :: "int \<Rightarrow> real"
  defines "e \<equiv> exp 1"
  and "f \<equiv> \<lambda> n :: int. 1 / e - (1 - 1 / n) powi n" 
  shows "\<forall> n :: int. n > 1 \<longrightarrow> 1 / (2 * n * e) < f n \<and> f n < 1 / (n * e)"
  sorry

end