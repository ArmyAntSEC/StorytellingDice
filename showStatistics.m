%% Compute Storytelling dice statistics

%% Lock the random number generator
rng(1);
maxDicePool = 12;

%% Compute the data
results = computeRollCurves(8, maxDicePool, 10000);
fig = figure(1);
boxplot( results )
title ( "Expected number of successes for dice pools with difficulty 8");
xlabel ( "Dice pool size")
ylabel ( "Success spread" )
fontsize(fig,scale=1)
