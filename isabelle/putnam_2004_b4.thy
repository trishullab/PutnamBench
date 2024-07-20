theory putnam_2004_b4 imports Complex_Main
begin

definition putnam_2004_b4_solution :: "nat \<Rightarrow> complex \<Rightarrow> complex" where "putnam_2004_b4_solution \<equiv> undefined"
(* (\<lambda>(n::nat)(z::complex). z + n) *)
theorem putnam_2004_b4:
  fixes n :: nat
  and Rk :: "nat \<Rightarrow> complex \<Rightarrow> complex"
  and R :: "nat \<Rightarrow> complex \<Rightarrow> complex"
  assumes nge2: "n \<ge> 2"
  defines "Rk \<equiv> (\<lambda>(k::nat)(Q::complex). k + exp (\<i> * 2 * pi / n) * (Q - k))"
  assumes hR: "R 0 = id \<and> (\<forall>k::nat. R (k+1) = Rk (k+1) \<circ> R k)"
  shows "R n = putnam_2004_b4_solution n"
  sorry

end
