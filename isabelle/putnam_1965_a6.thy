theory putnam_1965_a6 imports
Complex_Main
begin

theorem putnam_1965_a6:
  fixes u v m :: "real"
  assumes hu : "0 < u"
    and hv : "0 < v"
    and hm : "1 < m"
  shows "(\<exists> x :: real > 0. \<exists> y :: real > 0.
          u * x + v * y = 1 \<and>
          x powr m + y powr m = 1 \<and>
          u = x powr (m - 1) \<and>
          v = y powr (m - 1)) \<longleftrightarrow>
         (\<exists> n :: real. u powr n + v powr n = 1 \<and> 1/m + 1/n = 1)"
  sorry

end