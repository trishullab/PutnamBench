theory putnam_2011_b1 imports Complex_Main
begin

theorem putnam_2011_b1:
  fixes h k :: nat
  assumes hkpos: "h > 0 \<and> k > 0"
  shows "\<forall>\<epsilon>>0. \<exists>m n::nat. m > 0 \<and> n > 0 \<and> \<epsilon> < \<bar>h * sqrt m - k * sqrt n\<bar> \<and> \<bar>h * sqrt m - k * sqrt n\<bar> < 2*\<epsilon>"
  sorry

end
