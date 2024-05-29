theory putnam_2012_a4 imports Complex_Main

begin

theorem putnam_2012_a4:
  fixes q r :: "int"
    and A B :: "real \<times> real"
    and S :: "int set"
    and T :: "real set"
  defines "T \<equiv> {x :: real. \<exists> b m :: int. real_of_int b \<in> {fst B..snd B} \<and> x = b + m * q}"
    and "S \<equiv> {a :: int. real_of_int a \<in> {fst A..snd A} \<and> (real_of_int (r * a)) \<in> T}"
  assumes qpos : "q > 0"
    and ABlt : "fst A < snd A \<and> fst B < snd B"
  shows "((snd A - fst A) * (snd B - fst B) < q) \<longrightarrow> (\<exists> n :: nat. n > 2 \<and> (\<exists> a1 d :: real. {s :: real. round s \<in> S \<and> round s = s} = {fst A..snd A} \<inter> {x :: real. \<exists> i \<in> {1..n}. x = a1 + i * d}))" 
  sorry

end