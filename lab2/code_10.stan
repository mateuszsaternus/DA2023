data {
    int<lower=1> N; // Number of ys, supplied by interface
}

parameters {
    real y[N]; // Probabilistic variables y
    real theta; // Probabilistic variable theta
}

model {
    // Add conditional probabilty density for the ys
    // given theta to the joint log probability density
    // using equivalent sampling satement
    y ~normal(theta, 1);

    // Add marginal probability density for theta 
    // to the joint log probability density using
    // equivalent sampling statement
    theta ~normal(0,1);
}
generated quantities {
    real mean_y = mean(y);
}