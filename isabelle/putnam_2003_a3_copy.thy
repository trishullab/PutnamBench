theory putnam_2003_a3 imports Complex_Main
begin

theorem putnam_2003_a3:
  fixes f::"real⇒real"
  defines "f ≡ λx::real. abs(sin x + cos x + tan x + 1 / tan x + 1 / cos x + 1 / sin x)"
  shows "( 2 * sqrt 2 - 1 ) = (LEAST y. ∃x::real. f x = y)"
  sorry

end