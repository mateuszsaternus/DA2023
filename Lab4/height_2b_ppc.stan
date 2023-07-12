data {
    int<lower=0> N;
    real weight[N];
}

generated quantities {
   real<lower=0> alpha = normal_rng(155, 5);
   real<lower=0> sigma = gamma_rng(5,1);
   real beta = lognormal_rng(0, 1);
   real height[N];
   for (i in 1:N){
    height[i] = normal_rng(weight[i]*beta+alpha, sigma);
   }
}