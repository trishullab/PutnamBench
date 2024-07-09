theory putnam_2010_a4 imports Complex_Main
"HOL-Computational_Algebra.Primes"
begin

theorem putnam_2010_a4:
  fixes n :: nat
  assumes n_pos : "n > 0"
  shows "\<not> prime (10^(10^(10^n)) + 10^(10^n) + 10^n - 1)"
  sorry

end
