theory putnam_1977_a2 imports Complex_Main
begin

theorem putnam_1977_a2:
  shows "\<forall>a b c d::real. a \<noteq> 0 \<longrightarrow> b \<noteq> 0 \<longrightarrow> c \<noteq> 0 \<longrightarrow> d \<noteq> 0 \<longrightarrow> ((a + b + c = d \<and> 1 / a + 1 / b + 1 / c = 1 / d)
    \<longleftrightarrow> ( \<lambda>a. \<lambda>b. \<lambda>c. \<lambda>d. d = a \<and> b = -c \<or> d = b \<and> a = -c \<or> d = c \<and> a = -b ) a b c d)"
  sorry

end