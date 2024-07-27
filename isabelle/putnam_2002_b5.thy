theory putnam_2002_b5 imports
Complex_Main
begin

fun digits :: "nat \<Rightarrow> nat \<Rightarrow> nat list" where
  "digits b n = (if b < 2 then (replicate n 1) else (if n < b then [n] else [n mod b] @ digits b (n div b)))"
theorem putnam_2002_b5:
  shows "\<exists> n :: nat. card {b :: nat. b \<ge> 1 \<and> length (digits b n) = 3 \<and> digits b n = rev (digits b n)} \<ge> 2002"
  sorry

end
