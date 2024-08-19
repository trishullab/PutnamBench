theory putnam_1984_b5 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1984_b5_solution :: "int \<times> (real poly) \<times> (nat poly)" where "putnam_1984_b5_solution \<equiv> undefined"
(* (2, ((monom 1 1) * ((monom 1 1) - 1)) * (monom (1/2) 0), monom 1 1) *)
theorem putnam_1984_b5:
  fixes d :: "nat \<Rightarrow> nat"
    and m :: "nat"
  assumes mpos : "m > 0"
    and hd : "\<forall> n::nat. d n = (if n < 2 then n else ((n mod 2) + d (n div 2)))" 
  shows "let (a, f, g) = putnam_1984_b5_solution in (\<Sum> k=0..(2^m-1). (-1)^(d k) * k^m) = (-1)^m * (a powr (poly f m)) * (fact (poly g m))"
  sorry

end