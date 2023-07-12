generated quantities {
  real mi = normal_rng(155, 5);
  real<lower=0> sigma = gamma_rng(5, 1);
  real height_sim = normal_rng(mi, sigma);
}