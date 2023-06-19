function [distribution] = computeDistribution( difficulty, numberOfDice, ...
        dieGenerator, numberOfRolls )    
    distribution = zeros(20,1);

    for ii = 1:numberOfRolls
        result = rollOneDie(difficulty, dieGenerator) + 1;
        distribution(result) = distribution(result) + 1;
    end
end