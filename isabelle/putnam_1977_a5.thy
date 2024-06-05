theory putnam_1977_a5 imports Complex_Main "HOL-Number_Theory.Cong"
begin

theorem putnam_1977_a5:
  fixes p m n::nat
  assumes hp : "prime p"
    and hmgen : "m \<ge> n"
  shows "[(p*m) choose (p * n) = m choose n] (mod p)"
  sorry

end