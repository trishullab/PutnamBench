theory putnam_1965_a1 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Linear_Algebra"
begin

(* Note: Alternatively, for this problem, one may import Triangle.Angles by Manuel Eberl from AFP, however we have included the relevant definitions locally to avoid an extra dependency on AFP *)
definition vangle where
  "vangle u v = (if u = 0 \<or> v = 0 then pi / 2 else arccos (u \<bullet> v / (norm u * norm v)))"
definition angle where
  "angle a b c = vangle (a - b) (c - b)"
definition putnam_1965_a1_solution :: "real" where
"putnam_1965_a1_solution \<equiv> undefined"
(* pi / (15 :: real) *)"
theorem putnam_1965_a1:
  fixes A B C X Y :: "real^2"
  assumes hABC : "\<not> collinear {A,B,C}"
    and hangles : "angle C A B < angle B C A \<and> angle B C A < \<pi>/2 \<and> pi / 2 < angle A B C"
    and hX : "collinear {X, B, C} \<and> angle X A B = (pi - angle C A B)/2 \<and> dist A X = dist A B"
    and hY : "collinear {Y, C, A} \<and> angle Y B C = (pi - angle A B C)/2 \<and> dist B Y = dist A B"
  shows "angle C A B = putnam_1965_a1_solution"
  sorry

end