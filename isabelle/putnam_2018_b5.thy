theory putnam_2018_b5 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Derivative"
begin

theorem putnam_2018_b5:
  fixes f :: "real \<Rightarrow> real \<Rightarrow> real^2"
  and fpart1 :: "2 \<Rightarrow> real \<Rightarrow> (real \<Rightarrow> real)"
  and fpart2 :: "2 \<Rightarrow> real \<Rightarrow> (real \<Rightarrow> real)"
  defines "fpart1 \<equiv> \<lambda> (i :: 2) (x2 :: real). \<lambda> x1 :: real. (f x1 x2)$i"
  and "fpart2 \<equiv> \<lambda> (i :: 2) (x1 :: real). \<lambda> x2 :: real. (f x1 x2)$i"
  assumes fdiff: "\<forall> (i :: 2) (x :: real). (fpart1 i x) C1_differentiable_on UNIV \<and> (fpart2 i x) C1_differentiable_on UNIV"
  and fpos: "\<forall> (i :: 2) (x1 :: real) (x2 :: real). deriv (fpart1 i x2) x1 > 0 \<and> deriv (fpart2 i x1) x2 > 0"
  and fexprgrt0: "\<forall> x1 x2 :: real. (deriv (fpart1 1 x2) x1) * (deriv (fpart2 2 x1) x2) - (1 / 4) * ((deriv (fpart2 1 x1) x2) + deriv (fpart1 2 x2) x1) ^ 2 > 0"
  shows "inj f"
  sorry

end