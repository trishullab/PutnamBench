theory putnam_1979_b6 imports Complex_Main
begin

(* Note: Problem dimension boosted from Fin n *)
theorem putnam_1979_b6:
  fixes n :: "nat"
    and z :: "nat \<Rightarrow> complex"
  shows "\<bar>Re (csqrt (\<Sum> i \<in> {1::nat..n}. (z i)^2))\<bar> \<le> (\<Sum> i \<in> {1..n}. \<bar>Re (z i)\<bar>)"
  sorry

end