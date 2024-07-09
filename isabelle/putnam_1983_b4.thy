theory putnam_1983_b4 imports Complex_Main

begin

theorem putnam_1983_b4:
  fixes a f :: "nat \<Rightarrow> nat"
  defines "f \<equiv> \<lambda> n :: nat. n + (nat \<lfloor>sqrt (real n)\<rfloor>)"
  assumes ha0 : "a 0 > 0"
    and han : "\<forall> n :: nat. a (n + 1) = f (a n)"
  shows "\<exists> i :: nat. \<exists> s :: nat. a i = s^2"
  sorry

end