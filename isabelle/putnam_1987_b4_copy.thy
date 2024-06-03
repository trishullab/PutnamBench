theory putnam_1987_b4 imports Complex_Main
begin

theorem putnam_1987_b4:
  fixes x y::"nat\<Rightarrow>real"
  assumes hxy1 : "(x 1, y 1) = (0.8, 0.6)"
    and hx : "\<forall>n \<ge> 1. x (n+1) = (x n) * cos (y n) - (y n) * sin (y n)"
    and hy : "\<forall>n \<ge> 1. y (n+1) = (x n) * sin (y n) + (y n) * cos (y n)"
  shows "let (existsx, limx, existsy, limy) = ( (True, -1, True, 0) ) in
    (((\<exists>c::real. (x \<longlonglongrightarrow> c)) \<longrightarrow> existsx) \<and> (existsx \<longrightarrow> (x \<longlonglongrightarrow> limx)) \<and>
     ((\<exists>c::real. (y \<longlonglongrightarrow> c)) \<longrightarrow> existsy) \<and> (existsy \<longrightarrow> (y \<longlonglongrightarrow> limy)))"
  sorry

end