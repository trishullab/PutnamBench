theory putnam_1981_a1 imports Complex_Main
begin

theorem putnam_1981_a1:
  fixes P::"nat\<Rightarrow>nat\<Rightarrow>bool" and E::"nat\<Rightarrow>nat"
  defines "P \<equiv> \<lambda>n. \<lambda>k. 5^k dvd (\<Prod>m=1..n. m^m)"
    and "E \<equiv> \<lambda>n. (GREATEST k. P n k)"
  shows "(\<lambda>n. (E n) / n^2) \<longlonglongrightarrow> ( 1/8 )"
  sorry

end