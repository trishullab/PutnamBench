theory putnam_1990_a1 imports Complex_Main
begin

definition putnam_1990_a1_solution::"((nat\<Rightarrow>int)\<times>(nat\<Rightarrow>int))" where "putnam_1990_a1_solution \<equiv> undefined"
(* (\<lambda>n. fact n, \<lambda>n. 2^n) *)
theorem putnam_1990_a1:
  fixes T::"nat\<Rightarrow>int"
  assumes hT012 : "T 0 = 2 \<and> T 1 = 3 \<and> T 2 = 6"
    and hTn : "\<forall>n \<ge> 3. T n = (n+4) * T (n-1) - 4 * n * T (n-2) + (4 * n - 8) * T (n-3)"
  shows "T = (\<lambda>n. (fst putnam_1990_a1_solution) n + (snd putnam_1990_a1_solution) n)"
  sorry

end