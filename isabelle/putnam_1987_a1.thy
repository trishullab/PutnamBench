theory putnam_1987_a1 imports
Complex_Main
begin

theorem putnam_1987_a1:
  fixes A B C D :: "(real \<times> real) set"
  defines "A \<equiv> {(x, y). x ^ 2 - y ^ 2 = x / (x ^ 2 + y ^ 2)}"
  defines "B \<equiv> {(x, y). 2 * x * y + y / (x ^ 2 + y ^ 2) = 3}"
  defines "C \<equiv> {(x, y). x ^ 3 - 3 * x * y ^ 2 + 3 * y = 1}"
  defines "D \<equiv> {(x, y). 3 * x ^ 2 * y - 3 * x - y ^ 3 = 0}"
  shows "A \<inter> B = C \<inter> D"
  sorry

end