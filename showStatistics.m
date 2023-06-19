%% Compute Storytelling dice statistics

%% Lock the random number generator
rng(1);

%% Compute the data
distribution = computeDistribution( 8, 5, @dieRoller, 10000 );

plot ( distribution );