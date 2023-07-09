generated quantities {
  int<lower=0> N = 50;          // number of trials
  int<lower=0,upper=N> y;       // number of successes
  real<lower=0,upper=1> p;      // probability of allergic reaction
  
  // Prior for p
  p = beta_rng(2, 5);           // Beta(2, 5) prior
  
  // Generate y from a binomial distribution
  y = binomial_rng(N, p);
}
