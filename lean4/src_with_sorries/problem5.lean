import src.allimports
open BigOperators Real Nat Topology

/--
Prove that x * x mod 4 = 0 → x mod 4 = 0 ∨ x mod 4 = 2.
-/
theorem problem_5 (x : ℕ)
(h : x * x % 4 = 0) :
x % 4 = 2 ∨ x % 4 = 0 :=
by
have h' : x % 4 < 4 := Nat.mod_lt x (by decide)
have h'' : ∀ y : ℕ, y < 4 → y = 0 ∨ y = 1 ∨ y = 2 ∨ y = 3 := by
  intro y yh
  induction y
  simp
  rename_i y' y_ih
  have y'_lt_4 : y' < 3 := by linarith
  cases y'
  simp
  rename_i y''
  simp
  cases y''
  simp
  rename_i y'''
  simp
  cases y'''
  simp
  linarith
have h''' : x % 4 = 0 ∨ x % 4 = 1 ∨ x % 4 = 2 ∨ x % 4 = 3 := by
  apply h'' (x % 4) h'
cases h'''
rename_i x_mod_4_eq_0
exact Or.inr x_mod_4_eq_0
rename_i x_mod_4_eq_1
rw [Nat.mul_mod] at h
have h_contra : x % 4 !=2 → x * x % 4 ≠ 0 := by
  cases x_mod_4_eq_1
  rename_i x_mod_4_eq_1'
  rw [x_mod_4_eq_1'] at h
  simp at h
  rename_i x_mod_4_eq_2_3
  cases x_mod_4_eq_2_3
  rename_i x_mod_4_eq_2
  intro x_mod_4_neq_2
  rw [x_mod_4_eq_2] at x_mod_4_neq_2
  contradiction
  rename_i x_mod_4_eq_3
  intro x_mod_4_neq_2
  rw [x_mod_4_eq_3] at h
  simp at h
cases x_mod_4_eq_1
rename_i x_mod_4_eq_1'
rw [x_mod_4_eq_1'] at h_contra
simp at h_contra
rw [x_mod_4_eq_1'] at h
simp at h
rename_i x_mod_4_eq_2_3
cases x_mod_4_eq_2_3
rename_i x_mod_4_eq_2
apply Or.inl
exact x_mod_4_eq_2
rename_i x_mod_4_eq_3
rw [x_mod_4_eq_3] at h_contra
simp at h_contra
rw [x_mod_4_eq_3] at h
simp at h
