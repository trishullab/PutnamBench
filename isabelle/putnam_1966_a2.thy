theory putnam_1966_a2 imports Complex_Main
"HOL-Analysis.Linear_Algebra"
"HOL-Analysis.Elementary_Metric_Spaces"
"HOL-Analysis.Finite_Cartesian_Product"
begin

theorem putnam_1966_a2:
  fixes r a b c p :: "real"
    and A B C :: "real^2"
  defines "a \<equiv> dist B C"
    and "b \<equiv> dist C A"
    and "c \<equiv> dist A B"
    and "p \<equiv> (dist B C + dist C A + dist A B)/2"
  assumes hABC : "\<not> collinear {A, B, C}"
    and hr : "\<exists> I :: real^2. 
      (\<exists>! P :: real^2. dist I P = r \<and> collinear {P, B, C}) \<and>
      (\<exists>! Q :: real^2. dist I Q = r \<and> collinear {Q, C, A}) \<and>
      (\<exists>! R :: real^2. dist I R = r \<and> collinear {R, A, B}) \<and>
      (\<forall> Z :: real^2. (dist I Z \<le> r \<longrightarrow> Z \<in> convex hull {A, B, C}))"
  shows "1/(p-a)^2 + 1/(p-b)^2 + 1/(p-c)^2 \<ge> 1/r^2"
  sorry

end