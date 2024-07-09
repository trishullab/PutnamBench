theory batch_4 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_2021_b4:
  fixes f :: "nat\<Rightarrow>nat"
  assumes hf : "\<forall>x\<ge>2. f x = f (x-1) + f (x-2)"
    and f01 : "f 0 = 0 \<and> f 1 = 1"
  shows "\<forall>m > 2. \<exists>p. (\<Prod>k=1..(f m - 1). k^k) mod f m = f p"
  sorry

definition putnam_2020_a1_solution::nat where "putnam_2020_a1_solution \<equiv> undefined"
(* 508536 *)
theorem putnam_2020_a1:
  fixes S::"nat set"
  defines "S \<equiv> {x. (2020 dvd x) \<and> \<lfloor>log 10 x\<rfloor> + 1 \<le> 2020 \<and> 
    (\<exists>k l::nat. k \<ge> l \<and> x = (\<Sum>i=0..(k-l). 10^(i+l)))}"
  shows "card S = putnam_2020_a1_solution"
  sorry

definition putnam_2019_b5_solution::"nat \<times> nat" where "putnam_2019_b5_solution \<equiv> undefined"
(* (2019, 1010) *)
theorem putnam_2019_b5:
  fixes f::"nat\<Rightarrow>int" and p::"real poly"
  assumes hf : "\<forall>x\<ge>3. f x = f (x-1) + f (x-2)"
    and f12 : "f 1 = 1 \<and> f 2 = 1"
    and pdeg : "degree p = 1008"
    and hp : "\<forall>n\<le>1008. poly p (2 * n + 1) = f (2 * n + 1)"
  shows "\<forall>j k::nat. (poly p 2019 = f j - f k) \<longleftrightarrow> ((j, k) = putnam_2019_b5_solution)"
  sorry

definition putnam_2018_a1_solution::"(nat \<times> nat) set" where "putnam_2018_a1_solution \<equiv> undefined"
(* {(673, 1358114), (674, 340033), (1009, 2018), (2018, 1009), (340033, 674), (1358114, 673)} *)
theorem putnam_2018_a1:
  shows "\<forall>a b::nat. (a > 0 \<and> b > 0 \<and> (1 / a + 1 / b = 3 / 2018)) \<longleftrightarrow> (a, b) \<in> putnam_2018_a1_solution"
  sorry

(* Note: Boosted domain to infinite set *)
definition putnam_2018_a3_solution::real where "putnam_2018_a3_solution \<equiv> undefined"
(* 480/49 *)
theorem putnam_2018_a3:
  fixes f :: "(nat\<Rightarrow>real) \<Rightarrow> nat \<Rightarrow> real"
  defines "f \<equiv> \<lambda>x. \<lambda>k. \<Sum>i=0..<10. cos (k * (x i))"
  shows "putnam_2018_a3_solution = (GREATEST r. \<exists>x. f x 1 = 0 \<and> r = f x 3)"
  sorry

definition putnam_2017_a1_solution::"int set" where "putnam_2017_a1_solution \<equiv> undefined"
(* { x::int . x > 0 \<and> (x = 1 \<or> 5 dvd x) } *)
theorem putnam_2017_a1:
  shows "putnam_2017_a1_solution = (LEAST S. 
    2 \<in> S
    \<and> (\<forall>n. n^2 \<in> S \<longrightarrow> n \<in> S)
    \<and> (\<forall>n. n \<in> S \<longrightarrow> (n+5)^2 \<in> S)
    \<and> (\<forall>n \<in> S. n > 0))"
  sorry

end