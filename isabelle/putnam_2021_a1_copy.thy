theory putnam_2021_a1 imports Complex_Main
begin

theorem putnam_2021_a1:
  fixes P :: "((int \<times> int) list) \<Rightarrow> bool"
  assumes "P \<equiv> (\<lambda>l::(int\<times>int) list. length l \<ge> 1 \<and> l!0 = (0,0) \<and> last l = (2021,2021) \<and>
  (\<forall>n::nat\<in>{0..((length l)-2)}. sqrt ((fst (l!n) - fst (l!(n + 1)))^2 + (snd (l!n) - snd (l!(n + 1)))^2) = 5))"
  shows "(LEAST llen::nat. (\<exists>l::(int\<times>int) list. P l \<and> llen = length l)) = ( 578 )"
  sorry

end
