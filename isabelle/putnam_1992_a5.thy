theory putnam_1992_a5 imports Complex_Main
begin

theorem putnam_1992_a5:
  fixes num1s :: "nat \<Rightarrow> nat"
  and a :: "nat \<Rightarrow> nat"
  assumes hnum1s: "num1s 0 = 0 \<and> (\<forall>n::nat>0. num1s n = (if (odd n) then 1 else 0) + num1s (nat \<lfloor>n / 2\<rfloor>))"
  defines "a \<equiv> (\<lambda>n::nat. if (even (num1s n)) then 0 else 1)"
  shows "\<not>(\<exists>k::nat>0. \<exists>m::nat>0. \<forall>j::nat\<le>m-1. a (k+j) = a (k+m+j) \<and> a (k+m+j) = a (k+2*m+j))"
  sorry

end
