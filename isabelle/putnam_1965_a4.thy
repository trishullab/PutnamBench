theory putnam_1965_a4 imports
Complex_Main
begin

theorem putnam_1965_a4:
  fixes dances :: "('g::finite) \<Rightarrow> ('b::finite) \<Rightarrow> bool"
  assumes h: "(\<not>(\<exists> b :: 'b. \<forall> g :: 'g. dances g b)) \<and> (\<forall> g :: 'g. \<exists> b :: 'b. dances g b)"
  and nonempty: "(\<exists> g :: 'g. True) \<and> (\<exists> b :: 'b. True)"
  shows "\<exists> g h :: 'g. \<exists> b c :: 'b. dances g b \<and> dances h c \<and> \<not>dances h b \<and> \<not>dances g c"
  sorry

end