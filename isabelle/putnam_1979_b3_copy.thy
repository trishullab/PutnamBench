theory putnam_1979_b3 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_1979_b3:
  fixes F (structure)
    and n :: "nat"
    and b c :: "'a :: field"
    and p :: "'a poly"
  defines "p \<equiv> [:c, b, 1:]"
  assumes hFfin : "finite (carrier F) \<and> card (carrier F) = n"
    and Ffield : "field F"
    and nodd : "odd n"
    and hp : "irreducible p"
  shows "card {d :: ('a :: field). irreducible (p + monom d 0)} = (  \<lambda> n :: nat. nat \<lfloor>(n - 1) / 2\<rfloor> ) n"
  sorry

end