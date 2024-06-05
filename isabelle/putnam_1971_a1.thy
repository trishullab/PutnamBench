theory putnam_1971_a1 imports Complex_Main
begin

theorem putnam_1971_a1:
  fixes S :: "(int \<times> int \<times> int) set"
  and L :: "((int \<times> int \<times> int) \<times> (int \<times> int \<times> int)) \<Rightarrow> ((real \<times> real \<times> real) set)"
  assumes hS: "card S = 9"
  defines "L \<equiv> (\<lambda>((a::int,b::int,c::int),(d::int,e::int,f::int)).
  {(ad::real,be::real,cf::real). (\<exists>t::real\<in>{0<..<1}. ad = t*a + (1-t)*d \<and> be = t*b + (1-t)*e \<and> cf = t*c + (1-t)*f)})"
  shows "\<exists>x y z::int. \<exists>P\<in>S. \<exists>Q\<in>S. P \<noteq> Q \<and> (x,y,z) \<in> L (P,Q)"
  sorry

end
