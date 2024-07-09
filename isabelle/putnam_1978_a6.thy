theory putnam_1978_a6 imports Complex_Main
"HOL-Analysis.Elementary_Metric_Spaces"
begin

theorem putnam_1978_a6:
  fixes S :: "(real \<times> real) set"
    and n :: "nat"
  defines "n \<equiv> card S"
  assumes npos : "n > 0"
    and Sfin : "finite S"
  shows "card {pair :: (real \<times> real) set. \<exists> P \<in> S. \<exists> Q \<in> S. pair = {P, Q} \<and> dist P Q = 1} < 2 * (real n) powr ((real 3)/2)"
  sorry

end