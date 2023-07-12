data {
  int<lower=0> N;
  real heights[N];
}

parameters {
  real<lower=0> mi;
  real<lower=0> sigma;
}

model {
  mi ~ normal(155, 5);
  sigma ~ gamma(5, 1);
  
  heights ~ normal(mi, sigma);
}

generated quantities {
  real height_sim = normal_rng(mi, sigma);
}


