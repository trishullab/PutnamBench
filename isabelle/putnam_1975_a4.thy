theory putnam_1975_a4 imports
Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1975_a4_solution :: "nat \<Rightarrow> int poly" where "putnam_1975_a4_solution \<equiv> undefined"
(* \<lambda> m. \<Sum> j = 0 ..< (m - 1) div 2. monom 1 (2 * j + 1) *)
theorem putnam_1975_a4:
  fixes m :: nat
  and n :: nat
  and theta :: complex
  defines "n \<equiv> 2 * m"
  and "theta \<equiv> exp (2 * pi * \<i> / n)"
  assumes hm: "odd m \<and> m > 1"
  shows "1 / (1 - theta) = poly (map_poly complex_of_int (putnam_1975_a4_solution m)) theta"
  sorry

end