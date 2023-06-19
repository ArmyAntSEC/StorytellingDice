function [results] = computeRollCurves(difficulty, maxDicePool, numberOfRolls)
    results = zeros(numberOfRolls, maxDicePool);
    for ii = 1:maxDicePool
        results(:,ii) = rollMutlipleTimes( difficulty, ii, @dieRoller, numberOfRolls );        
    end
end

