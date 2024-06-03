theory putnam_1984_b5 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_1984_b5:
  fixes d :: "nat \<Rightarrow> nat"
    and m :: "nat"
  assumes mpos : "m > 0"
    and hd : "\<forall> n::nat. d n = (if n < 2 then n else ((n mod 2::nat) + d (n div 2::nat)))" 
  shows "let (a, f, g) = ( (2, ((monom 1 1) * ((monom 1 1) - 1)) * (monom (1/2) 0), monom 1 1) ) in (\<Sum> k=0..(2^m-1). (-1::int)^(d k) * k^m) = (-1::int)^m * (a powr (poly f m)) * (fact (poly g m))"
  sorry

end