theory putnam_1984_a3 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Determinants"
begin

definition putnam_1984_a3_solution :: "real poly poly poly" where "putnam_1984_a3_solution \<equiv> undefined"
(* (monom 1 2) * ([:[:monom 1 2:]:] - [:monom 1 2:]) *)
theorem putnam_1984_a3:
  fixes n :: "nat"
    and a b :: "real"
    and Mn :: "real \<Rightarrow> (real^'i^'i)"
    and ni :: "'i \<Rightarrow> nat"
  defines "Mn \<equiv> \<lambda> x :: real. \<chi> i j :: 'i. if i = j then x else if even (ni i + ni j) then a else b"
  assumes hij : "CARD('i) = 2*n"
    and hn : "bij_betw ni (UNIV :: 'i set) {1..2*n}"
    and npos : "n > 0"
    and aneb : "a \<noteq> b"
  shows "filterlim (\<lambda> x :: real. det (Mn x) / (x - a) ^ (2 * n - 2)) (nhds (poly (poly (poly putnam_1984_a3_solution [:[:(n::real):]:]) [:b:]) a)) (at a)"
  sorry

end