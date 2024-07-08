theory putnam_1971_b3 imports Complex_Main
"HOL-Analysis.Lebesgue_Measure"
begin

theorem putnam_1971_b3:
  fixes T :: "real"
  assumes hT : "T > 0"
  shows "emeasure lebesgue {t :: real. t \<ge> T \<and> \<lfloor>t\<rfloor> = 2 * \<lfloor>t - T\<rfloor>} = 1"
  sorry

end