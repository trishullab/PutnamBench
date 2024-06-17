theory putnam_1965_a6 imports
Complex_Main
begin

theorem putnam_1965_a6:
  fixes u v m :: real
  assumes hm: "m > 1"
  and huv: "u \<ge> 0 \<and> v \<ge> 0"
  shows "(\<exists>! p :: real \<times> real. fst p \<ge> 0 \<and> snd p \<ge> 0 \<and> u * (fst p) + v * (snd p) = 1 \<and> (fst p) powr m + (snd p) powr m = 1) \<longleftrightarrow> (\<exists> n :: real. u powr n + v powr n = 1 \<and> m powi -1 + n powi -1 = 1)"
  sorry

end