theory putnam_1970_b1 imports Complex_Main
begin

definition putnam_1970_b1_solution :: real where "putnam_1970_b1_solution \<equiv> undefined"
(* exp (2*ln 5 - 4 + 2*arctan 2) *)
theorem putnam_1970_b1:
  shows "filterlim (\<lambda>n::nat. 1/(n^4) * (\<Prod>i::nat=1..(2*n). (n^2 + i^2) powr (1/n))) (nhds putnam_1970_b1_solution) at_top"
  sorry

end
