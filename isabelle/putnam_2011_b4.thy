theory putnam_2011_b4 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Determinants"
begin

theorem putnam_2011_b4:
  fixes games :: "2011 \<Rightarrow> 2011 \<Rightarrow> bool"
  and T :: "complex^2011^2011"
  and W :: "complex^2011^2011"
  defines "T \<equiv> \<chi> i j. complex_of_nat (card {g :: 2011. games g i = games g j})"
  and "W \<equiv> \<chi> i j. (complex_of_nat (card {g :: 2011. games g i \<and> \<not>games g j} - card {g :: 2011. \<not>games g i \<and> games g j}))"
  shows "\<exists> n :: nat. det (T + mat \<i> ** W) = n \<and> (2 ^ 2010) dvd n"
  sorry

end