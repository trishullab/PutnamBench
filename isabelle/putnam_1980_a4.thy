theory putnam_1980_a4 imports
Complex_Main
begin

theorem putnam_1980_a4:
  fixes abcvals :: "int \<Rightarrow> int \<Rightarrow> int \<Rightarrow> bool"
  defines "abcvals \<equiv> \<lambda> a b c :: int. \<not>(a = 0 \<and> b = 0 \<and> c = 0) \<and> \<bar>a\<bar> < 1000000 \<and> \<bar>b\<bar> < 1000000 \<and> \<bar>c\<bar> < 1000000"
  shows "(\<exists> a b c :: int. abcvals a b c \<and> \<bar>a + b * sqrt 2 + c * sqrt 3\<bar> < 10 powi -11) \<and> (\<forall> a b c :: int. abcvals a b c \<longrightarrow> \<bar>a + b * sqrt 2 + c * sqrt 3\<bar> > 10 powi -21)"
  sorry

end
