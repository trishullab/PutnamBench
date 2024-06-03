theory putnam_1975_a2 imports Complex_Main
begin

theorem putnam_1975_a2:
  shows "\<forall>b c::real. (\<forall>z::complex. (z^2 + b * z + c) = 0 \<longrightarrow> norm z < 1) \<longleftrightarrow> ( \<lambda>b. \<lambda>c. c < 1 \<and> c - b > -1 \<and> c + b > -1 ) b c"
  sorry

end