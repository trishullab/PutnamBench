theory putnam_1983_a4 imports Complex_Main

begin

theorem putnam_1983_a4:
  fixes k m :: "nat"
    and S :: "int"
  defines "m \<equiv> 6*k-1"
    and "S \<equiv> \<Sum> j::nat \<in> {1..2*k-1}. (-1)^(j+1) * (m choose (3 * j -1))"
  assumes kpos : "k > 0"
  shows "S \<noteq> 0"
  sorry

end