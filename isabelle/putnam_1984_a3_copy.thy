theory putnam_1984_a3 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Determinants"
begin

theorem putnam_1984_a3:
  fixes n :: "nat"
    and a b :: "real"
    and Mn :: "real \<Rightarrow> (real^'i^'i)"
    and ni :: "'i \<Rightarrow> nat"
  assumes hij : "CARD('i) = 2*n"
    and hn : "bij_betw ni (UNIV :: 'i set) {1..2*n}"
    and npos : "n > 0"
    and aneb : "a \<noteq> b"
    and hMnx : "\<forall> x :: real. \<forall> i :: 'i. (Mn x)$i$i = x"
    and hMna : "\<forall> x :: real. \<forall> i j :: 'i. (ni i \<noteq> nj j \<and> even (ni i + nj j)) \<longrightarrow> (Mn x)$i$j = a"
    and hMnb : "\<forall> x :: real. \<forall> i j :: 'i. (ni i \<noteq> nj j \<and> odd (ni i + nj j)) \<longrightarrow> (Mn x)$i$j = b"
  shows "filterlim (\<lambda> x :: real. det (Mn x) / (x - a) ^ (2 * n - 2)) (nhds (poly (poly (poly ( (monom 1 2) * ([:[:monom 1 2:]:] - [:monom 1 2:]) ) [:[:(n::real):]:]) [:b:]) a)) (at a)"
  sorry

end