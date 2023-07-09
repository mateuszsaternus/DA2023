generated quantities {
  real mi = normal_rng(160, 10);
  real<lower=0> sigma = gamma_rng(2, 30);
  real height_sim = normal_rng(mi, sigma + 15);
}