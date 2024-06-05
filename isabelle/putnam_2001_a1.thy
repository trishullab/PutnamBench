theory putnam_2001_a1 imports Complex_Main
begin

theorem putnam_2001_a1:
  fixes op :: "'a => 'a => 'a"
  assumes hop : "\<forall>a b :: 'a. op (op a b) a = b"
  shows "\<forall>a b :: 'a. op a (op b a) = b"
  sorry

end
