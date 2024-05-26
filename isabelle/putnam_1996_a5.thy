theory putnam_1996_a5 imports Complex_Main

begin

theorem putnam_1996_a5:
  fixes p k :: "nat"
  defines "k \<equiv> nat \<lfloor>2 * p / 3\<rfloor>"
  assumes hpprime : "prime p"
    and hpge3 : "p > 3"
  shows "p^2 dvd (\<Sum> i \<in> {1 :: nat..k}. p choose i)"
  sorry

end