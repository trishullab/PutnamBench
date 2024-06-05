theory putnam_2014_b6 imports Complex_Main
begin

(* uses (real \<Rightarrow> real) instead of ({0..1} \<Rightarrow> real) *)
theorem putnam_2014_b6:
  fixes f :: "real \<Rightarrow> real"
  assumes hlip: "\<exists>K::real>0. \<forall>x::real\<in>{0..1}. \<forall>y::real\<in>{0..1}. \<bar>f x - f y\<bar> \<le> K*\<bar>x - y\<bar>"
  and hrat: "\<forall>r::rat\<in>{0..1}. \<exists>a b::int. f (real_of_rat r) = a + b*r"
  shows "\<exists>I::(real set) set. finite I \<and> (\<forall>Ii\<in>I. (\<exists>a b::real. a \<le> b \<and> Ii = {a..b}) \<and> (\<exists>m c::real. \<forall>x::real\<in>Ii. f x = c + m*x)) \<and> {0..1} = \<Union> I"
  sorry

end
