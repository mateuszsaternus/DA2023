data {
  int<lower=0> N;     // number of trials
  int<lower=0,upper=N> y;  // number of successes
}

parameters {
  real<lower=0,upper=1> p;  // probability of allergic reaction
}

model {
  // Prior selected using prior predictive distribution
  p ~ beta(2, 5);
  
  // Likelihood function
  y ~ binomial(N, p);
}

generated quantities {
  int<lower=0,upper=N> y_pred;  // predicted number of allergic reactions
  
  // Predictive distribution for y_pred
  y_pred = binomial_rng(N, p);
}