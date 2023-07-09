generated quantities{
    real alpha = normal_rng(0.8, 0.181);
    real theta = normal_rng(0.000851, 0.000086);
    real n = normal_rng(5716, 1117);
    real lambda =  exp(alpha + theta * n);
    int y = poisson_rng(lambda);
}