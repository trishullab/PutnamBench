theory putnam_2022_a3 imports Complex_Main
"HOL-Number_Theory.Cong"
begin

theorem putnam_2022_a3:
  fixes p f::int
  defines "f \<equiv> card {a :: nat \<Rightarrow> int. \<forall> n :: nat. a n \<in> {1..(p-1)} \<and> [a n * a (n + 2) = 1 + a (n + 1)] (mod p)}"
  assumes hp : "prime p \<and> p > 5"
  shows "[f = 0] (mod 5) \<or> [f = 2] (mod 5)"
  sorry

end