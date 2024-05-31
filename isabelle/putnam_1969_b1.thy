theory putnam_1969_b1 imports Complex_Main
begin

theorem putnam_1969_b1:
  fixes n :: nat
  assumes hnpos: "n > 0"
  and hn: "24 dvd (n + 1)"
  shows "24 dvd (\<Sum> {d::nat. d dvd n})"
  sorry

end
