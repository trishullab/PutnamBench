theory putnam_1974_a4 imports Complex_Main
begin

definition putnam_1974_a4_solution :: "nat \<Rightarrow> real" where "putnam_1974_a4_solution \<equiv> undefined"
(* (\<lambda>n::nat. (n / 2^(n-1)) * ((n-1) choose (nat \<lfloor>n/2\<rfloor>))) *)
theorem putnam_1974_a4:
  fixes n :: nat
  assumes hn: "n > 0"
  shows "1/(2^(n-1)) * (\<Sum>k::nat=0..(nat (\<lfloor> n/2 \<rfloor>)). (n - 2*k) * (n choose k)) = putnam_1974_a4_solution n"
  sorry

end
