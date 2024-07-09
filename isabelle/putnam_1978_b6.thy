theory putnam_1978_b6 imports Complex_Main
begin

theorem putnam_1978_b6:
  fixes a::"nat\<Rightarrow>nat\<Rightarrow>real" and m n::nat
  assumes ha : "\<forall>i j. a i j \<in> {0..1::real}"
    and mnpos : "m > 0 \<and> n > 0"
  shows "(\<Sum>i=1..n. (\<Sum>j=1..m*i. a i j / i))^2 \<le> 2 * m * (\<Sum>i=1..n. (\<Sum>j=1..m*i. a i j))"
  sorry

end