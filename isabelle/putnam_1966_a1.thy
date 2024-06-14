theory putnam_1966_a1 imports
Complex_Main
begin

theorem putnam_1966_a1:
  fixes f :: "int \<Rightarrow> int"
  defines "f \<equiv> \<lambda> n :: int. \<Sum> m = 1..n. (if even m then m div 2 else (m - 1) div 2)"
  shows "\<forall> x y :: int. (x > 0 \<and> y > 0 \<and> x > y) \<longrightarrow> x * y = f (x + y) - f (x - y)"
  sorry

end