theory putnam_1978_a2 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Determinants"
begin

theorem putnam_1978_a2:
  fixes n :: "nat"
    and a b :: "real"
    and A :: "real^'n^'n"
    and c :: "'n \<Rightarrow> real"
    and p :: "real \<Rightarrow> real"
    and prm :: "'n \<Rightarrow> nat"
  defines "A \<equiv> \<chi> i j :: 'n. if prm i < prm j then a else (if prm i > prm j then b else c i)"
    and "p \<equiv> \<lambda> x :: real. (\<Prod> i :: 'n \<in> UNIV. (c i - x))"
  assumes htype : "CARD('n) = n"
    and hprmresbij : "prm ` UNIV = {0..n-1}"
    and hab : "a \<noteq> b"
    and npos : "n > 0"
  shows "det A = ((b * p a - a * p b) / (b - a))"
  sorry

end