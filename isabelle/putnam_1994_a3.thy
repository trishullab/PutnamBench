theory putnam_1994_a3 imports Complex_Main
"HOL-Analysis.Cartesian_Space"
"HOL-Analysis.Convex"
begin

theorem putnam_1994_a3:
  fixes T :: "(real^2) set"
    and Tcolors :: "(real^2) \<Rightarrow> 4"
  defines "T \<equiv> convex hull {vector [0, 0], vector [1, 0], vector [0, 1]}"
  shows "\<exists> p \<in> T. \<exists> q \<in> T. Tcolors p = Tcolors q \<and> dist p q \<ge> 2 - sqrt 2"
  sorry                                                               

end