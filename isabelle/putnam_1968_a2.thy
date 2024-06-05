theory putnam_1968_a2 imports
Complex_Main
begin

theorem putnam_1968_a2:
  fixes a b c d e f :: int
  and \<epsilon> :: real
  assumes hne: "a * d \<noteq> b * c" 
  and h\<epsilon>: "\<epsilon> > 0"
  shows "\<exists> r s :: rat. 0 < real_of_rat \<bar>r * rat_of_int a + s * rat_of_int b - rat_of_int e\<bar> \<and> real_of_rat \<bar>r * rat_of_int a + s * rat_of_int b - rat_of_int e\<bar> < \<epsilon> \<and> 0 < real_of_rat \<bar>r * rat_of_int c + s * rat_of_int d - rat_of_int f\<bar> \<and> real_of_rat \<bar>r * rat_of_int c + s * rat_of_int d - rat_of_int f\<bar> < \<epsilon>"
  sorry

end