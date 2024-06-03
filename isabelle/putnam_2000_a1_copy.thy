theory putnam_2000_a1 imports
Complex_Main
begin

theorem putnam_2000_a1:
  fixes A :: real
  assumes Apos: "A > 0"
  shows "{S :: real. \<exists> x :: nat \<Rightarrow> real. (\<forall> j :: nat. x j > 0) \<and> (\<Sum> j :: nat. x j) = A \<and> (\<Sum> j :: nat. (x j) ^ 2) = S} = ( \<lambda> A. {0 <..< A ^ 2} ) A"
  sorry

end