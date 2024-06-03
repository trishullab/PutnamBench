theory putnam_1990_a1 imports Complex_Main
begin

theorem putnam_1990_a1:
  fixes T::"nat\<Rightarrow>int"
  assumes hT012 : "T 0 = 2 \<and> T 1 = 3 \<and> T 2 = 6"
    and hTn : "\<forall>n \<ge> 3. T n = (n+4) * T (n-1) - 4 * n * T (n-2) + (4 * n - 8) * T (n-3)"
  shows "T = (\<lambda>n. (fst ( (\<lambda>n. fact n, \<lambda>n. 2^n) )) n + (snd ( (\<lambda>n. fact n, \<lambda>n. 2^n) )) n)"
  sorry

end