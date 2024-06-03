theory putnam_2018_b4 imports Complex_Main
begin

theorem putnam_2018_b4:
  fixes a::real and f::"nat \<Rightarrow> real"
  assumes f0 : "f 0 = 1"
    and f1 : "f 1 = a"
    and f2 : "f 2 = a"
    and fn : "\<forall>n \<ge> 2. f (n+1) = 2  * f n * f (n-1) - f (n-2)"
    and fex0 : "\<exists>n. f n = 0"
  shows "\<exists>T>0. \<forall>n. f (n + T) = f n"
  sorry

end
