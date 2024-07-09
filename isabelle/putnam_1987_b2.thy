theory putnam_1987_b2 imports Complex_Main
begin

theorem putnam_1987_b2:
  fixes r s t::nat
  assumes hsum : "r + s \<le> t"
  shows "(\<Sum>i=0..s. (s choose i) / (t choose (r+i))) = (t+1) / ((t+1-s) * ((t-s) choose r))"
  sorry

end