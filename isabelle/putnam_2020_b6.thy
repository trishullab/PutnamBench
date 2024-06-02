theory putnam_2020_b6 imports Complex_Main
begin

theorem putnam_2020_b6:
  fixes n :: nat
  assumes npos: "n > 0"
  shows "(\<Sum>k::nat=1..n. (-1) ^ (nat \<lfloor>k * (sqrt 2 - 1)\<rfloor>)) \<ge> 0"
  sorry

end
