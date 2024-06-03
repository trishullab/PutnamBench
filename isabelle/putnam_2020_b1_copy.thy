theory putnam_2020_b1 imports Complex_Main
begin

theorem putnam_2020_b1:
  fixes d :: "int \<Rightarrow> nat"
  and S :: "int"
  assumes "d \<equiv> (\<lambda>n::int. if n = 0 then 0 else ((n mod 2) + d \<lfloor>n / 2\<rfloor>))"
  and "S \<equiv> \<Sum>k::int=1..2020. (-1)^(d k) * k^3"
  shows "S mod 2020 = ( 1990 )"
  sorry

end
