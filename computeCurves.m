function [median, q1, q3] = computeCurves(difficulty, maxDicePool, numberOfRolls)
    median = zeros(maxDicePool, 1);
    q1 = zeros(maxDicePool, 1);
    q3 = zeros(maxDicePool, 1);
    for ii = 1:maxDicePool
        results = rollMutlipleTimes( difficulty, ii, @dieRoller, numberOfRolls );
        [median(ii), q1(ii), q3(ii)] = computeStatistics( results );
    end
end

