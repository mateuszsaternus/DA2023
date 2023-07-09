data{
    int N;
    real n[N];
    int y[N];
}

parameters{
    vector[N] alpha;
    real theta;
}

model{
    alpha ~ normal(0.8, 0.181); 
    theta ~ normal(0.000851, 0.000086);  

    for (i in 1:N){
        y[i] ~ poisson_log(alpha[i] + theta * n[i]);
    }
}
generated quantities {
    real y_pred[N];

    for (i in 1:N){
        y_pred[i] = poisson_log_rng(alpha[i] + theta *n[i]);
    }
}