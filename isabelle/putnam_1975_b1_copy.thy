theory putnam_1975_b1 imports Complex_Main
begin

theorem putnam_1975_b1:
  fixes H::"(int \<times> int) set"
  defines "H \<equiv> {(x, y). \<exists>u v w::int. (x, y) = (u*3 + v*4 + w*5, u*8 - v + w*4)}"
  shows "\<exists>b::int. H = {(x, y). \<exists>u v::int. (x, y) = (u, u*b + v*( 7 ))} \<and> ( 7 ) > 0"
  sorry

end