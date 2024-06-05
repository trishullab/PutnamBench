theory putnam_1975_b1 imports Complex_Main
begin

definition putnam_1975_b1_solution::int where "putnam_1975_b1_solution \<equiv> undefined"
(* 7 *)
theorem putnam_1975_b1:
  fixes H::"(int \<times> int) set"
  defines "H \<equiv> {(x, y). \<exists>u v w::int. (x, y) = (u*3 + v*4 + w*5, u*8 - v + w*4)}"
  shows "\<exists>b::int. H = {(x, y). \<exists>u v::int. (x, y) = (u, u*b + v*putnam_1975_b1_solution)} \<and> putnam_1975_b1_solution > 0"
  sorry

end