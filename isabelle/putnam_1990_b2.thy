theory putnam_1990_b2 imports Complex_Main
begin

theorem putnam_1990_b2:
  fixes x z::real and P::"nat\<Rightarrow>real"
  defines "P \<equiv> \<lambda>j. (\<Prod>i=0..<j. (1 - z * x^i)) / (\<Prod>i=1..j. (z - x^i))"
  assumes xlt1 : "abs(x) < 1"
    and zgt1 : "abs(z) > 1"
  shows "1 + (\<Sum>j::nat. (1 + x^(j+1)) * P (j+1)) = 0"
  sorry

end