theory putnam_1975_b6 imports
Complex_Main
begin

theorem putnam_1975_b6:
  fixes s :: "nat \<Rightarrow> real"
  defines "s \<equiv> \<lambda> n. \<Sum> i = 1 .. n. 1 / i"
  shows "(\<forall> n :: nat. n > 1 \<longrightarrow> n * (n + 1) powr (1 / n) < n + s n) \<and> (\<forall> n :: nat. n > 2 \<longrightarrow> (n - 1) * n powr (-1 / n - 1) < n - s n)"
  sorry

end