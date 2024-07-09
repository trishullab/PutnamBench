theory putnam_1986_b6 imports Complex_Main "HOL-Algebra.Ring" "HOL-Analysis.Finite_Cartesian_Product"
begin

theorem putnam_1986_b6:
  fixes n::nat and F::"('a::{semiring_1, minus}, 'm) ring_scheme" (structure) and A B C D::"'a^'b^'b"
  assumes npos : "n > 0"
    and Ffield : "field F"
    and matdim : "CARD('b) = n"
    and hsymm1 : "A ** transpose B = transpose (A ** transpose B)"
    and hsymm2 : "C ** transpose D = transpose (C ** transpose D)"
    and hid : "A ** transpose D - B ** transpose C = 1"
  shows "transpose A ** D - transpose C ** B = 1"
  sorry

end
