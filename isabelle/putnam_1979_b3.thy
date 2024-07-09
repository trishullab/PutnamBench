theory putnam_1979_b3 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1979_b3_solution :: "nat \<Rightarrow> nat" where
"putnam_1979_b3_solution \<equiv> undefined"
(*  \<lambda> n :: nat. nat \<lfloor>(n - 1) / 2\<rfloor> *)
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
  shows "card {d :: ('a :: field). irreducible (p + monom d 0)} = putnam_1979_b3_solution n"
  sorry

end