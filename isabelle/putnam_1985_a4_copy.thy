theory putnam_1985_a4 imports Complex_Main
begin

theorem putnam_1985_a4:
  fixes a::"nat\<Rightarrow>nat"
  assumes ha1 : "a 1 = 3"
    and ha : "\<forall>i \<ge> 1. a (i+1) = 3^ (a i)"
  shows "( {87} ) = {k::nat. k < 100 \<and> k \<ge> 0 \<and> (\<forall>N::nat. \<exists>i::nat \<ge> N. (a i) mod 100 = k)}"
  sorry

end