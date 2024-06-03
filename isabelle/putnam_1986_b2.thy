theory putnam_1986_b2 imports Complex_Main
begin

definition putnam_1986_b2_solution::"(complex\<times>complex\<times>complex) set" where "putnam_1986_b2_solution \<equiv> undefined"
(* {(0, 0, 0), (0, -1, 1), (1, 0, -1), (-1, 1, 0)} *)
theorem putnam_1986_b2:
  shows "putnam_1986_b2_solution = {T. \<exists>x y z::complex. T = (x - y, y - z, z - x) \<and> x*(x-1) + 2*y*z = y*(y-1) + 2*z*x
    \<and> y*(y-1) + 2*z*x = z*(z-1) + 2*x*y}"
  sorry

end
