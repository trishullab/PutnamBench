theory putnam_1968_a3 imports
Complex_Main
begin

theorem putnam_1968_a3:
  shows "\<exists> l :: ('a::finite) set list. l!0 = {} \<and> (\<forall> S :: 'a set. \<exists>! i \<in> {0 ..< length l}. l!i = S) \<and>
          (\<forall> i \<in> {0 ..< length l - 1}. \<exists> a :: 'a. (a \<notin> l!i \<and> l!(i+1) = insert a (l!i)) \<or> (a \<notin> l!(i+1) \<and> l!i = insert a (l!(i+1))))"
  sorry

end