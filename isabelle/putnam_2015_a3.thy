theory putnam_2015_a3 imports Complex_Main
begin

definition putnam_2015_a3_solution :: complex where "putnam_2015_a3_solution \<equiv> undefined"
(* 13725 *)
theorem putnam_2015_a3:
  shows "log 2 (Re (\<Prod>a::nat=1..2015. \<Prod>b::nat=1..2015. (1 + exp (2*pi*\<i>*a*b/2015)))) = putnam_2015_a3_solution"
  sorry

end
