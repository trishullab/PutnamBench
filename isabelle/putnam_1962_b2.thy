theory putnam_1962_b2 imports Complex_Main
begin

(* Note: Uses nat set instead of set of positive integers, the problem is the same *)
theorem putnam_1962_b2:
  shows "\<exists> f :: real \<Rightarrow> nat set. \<forall> a b :: real. (a < b \<longrightarrow> (f a \<subset> f b))" 
  sorry

end