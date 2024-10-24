theory putnam_2018_b5 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Derivative"
begin

theorem putnam_2018_b5:
  fixes f :: "real \<Rightarrow> real \<Rightarrow> real^2"
  and fpart1 :: "real \<Rightarrow> (real \<Rightarrow> real)"
  and fpart2 :: "real \<Rightarrow> (real \<Rightarrow> real)"
  defines "fpart1 \<equiv> \<lambda> (x2 :: real). \<lambda> x1 :: real. (f x1 x2)$0"
  and "fpart2 \<equiv> \<lambda> (x1 :: real). \<lambda> x2 :: real. (f x1 x2)$1"
  assumes fdiff: "\<forall> (x :: real). (fpart1 x) C1_differentiable_on UNIV \<and> (fpart2 x) C1_differentiable_on UNIV"
  and fpos: "\<forall>  (x1 :: real) (x2 :: real). deriv (fpart1 x2) x1 > 0 \<and> deriv (fpart2 x1) x2 > 0"
  and fexprgrt0: "\<forall> x1 x2 :: real. (deriv (fpart1 x2) x1) * (deriv (fpart2 x1) x2) - (1 / 4) * ((deriv (fpart2 x1) x2) + deriv (fpart1 x2) x1) ^ 2 > 0"
  shows "inj (\<lambda> (a,b). f a b)"
  sorry

end