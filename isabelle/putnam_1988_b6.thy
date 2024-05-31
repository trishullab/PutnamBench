theory putnam_1988_b6 imports
Complex_Main
begin

theorem putnam_1988_b6:
  fixes trinums :: "int set"
  defines "trinums \<equiv> {t :: int. \<exists> n :: nat. t = (n * (n + 1)) / 2}"
  shows "infinite {(a :: int, b :: int). \<forall> t > 0. (a * t + b) \<in> trinums \<longleftrightarrow> t \<in> trinums}"
  sorry

end