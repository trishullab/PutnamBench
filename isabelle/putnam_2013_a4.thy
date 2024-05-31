theory putnam_2013_a4 imports Complex_Main

begin

theorem putnam_2013_a4:
  fixes n k :: "nat"
    and Zsum Nsum :: "real"
    and circle :: "nat \<Rightarrow> nat"
    and Z N :: "(nat \<times> nat) \<Rightarrow> nat"
    and ws :: "nat \<Rightarrow> (nat \<times> nat)"
  defines "Zsum \<equiv> (1 / real_of_nat k) * (\<Sum> j\<in>{0..(n-1)}. Z (ws j))"
    and "Nsum \<equiv> (1 / real_of_nat k) * (\<Sum> j\<in>{0..n-1}. N (ws j))"
  assumes npos : "n \<ge> 1"
    and kpos : "k \<ge> 1"
    and hcircle : "\<forall> i :: nat. circle i \<in> {0 :: nat..1}"
    and hZ : "\<forall> w \<in> {0..n-1} \<times> {0..n}. Z w = (\<Sum> l :: nat \<in> {0..snd w - 1}. if circle ((fst w + l) mod n) = 0 then 1 else 0)"
    and hN : "\<forall> w \<in> {0..n-1} \<times> {0..n}. Z w = (\<Sum> l :: nat \<in> {0..snd w - 1}. if circle ((fst w + l) mod n) = 1 then 1 else 0)"
    and Zle1 : "\<forall> w \<in> {0..n-1} \<times> {0..n}. \<forall> w' \<in> {0..n-1} \<times> {0..n}. (snd w) = (snd w') \<longrightarrow> \<bar>int (Z w) - int (Z w')\<bar> \<le> 1"
    and hNZsum : "round Nsum = Nsum \<and> round Zsum = Zsum"
  shows "\<exists> w :: nat \<times> nat. (fst w \<le> n-1 \<and> snd w \<le> n) \<and> ((real (Z w) = Zsum) \<and> (real (N w) = Nsum))"
  sorry

end