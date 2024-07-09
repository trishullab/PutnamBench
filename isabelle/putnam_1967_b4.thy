theory putnam_1967_b4 imports Complex_Main
begin

theorem putnam_1967_b4:
  fixes n :: "nat"
    and lockers :: "nat \<Rightarrow> nat \<Rightarrow> int"
  assumes npos : "n \<ge> 1"
    and hlockers0 : "\<forall> i \<in> {1::nat..n}. lockers 0 i = 0"
    and hlockersk : "\<forall> k \<in> {1::nat..n}. \<forall> i \<in> {1::nat..n}. lockers k i = (if k dvd i then (1 - (lockers (k-1) i)) else (lockers (k-1) i))"
  shows "\<forall> i \<in> {1::nat..n}. lockers n i = 1 \<longleftrightarrow> (\<exists> j :: int. j^2 = i)"
  sorry

end