theory putnam_1976_a3 imports Complex_Main
begin

definition putnam_1976_a3_solution :: "(nat \<times> nat \<times> nat \<times> nat) set" where
"putnam_1976_a3_solution \<equiv> undefined"
(* {(3,2,2,3), (2,3,3,2)} *)
theorem putnam_1976_a3:
  shows "{z :: nat \<times> nat \<times> nat \<times> nat. let (p,q,r,s) = z in prime p \<and> prime q \<and> r > 1 \<and> s > 1 \<and> \<bar>int (p^r) - int (q^s)\<bar> = 1} = putnam_1976_a3_solution"
  sorry

end