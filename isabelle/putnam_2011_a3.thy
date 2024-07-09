theory putnam_2011_a3 imports Complex_Main
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Lebesgue_Measure"
begin

(* there may be multiple possible correct answers *)
definition putnam_2011_a3_solution :: "real \<times> real" where "putnam_2011_a3_solution \<equiv> undefined"
(* (-1, 2/pi) *)
theorem putnam_2011_a3:
  shows "let (c, L) = putnam_2011_a3_solution in (L > 0 \<and> filterlim (\<lambda>r::real. (r powr c * (set_lebesgue_integral lebesgue {0<..<(pi/2)} (\<lambda>x::real. x powr r * sin x))) / (set_lebesgue_integral lebesgue {0<..<(pi/2)} (\<lambda>x::real. x powr r * cos x))) (nhds L) at_top)"
  sorry

end
