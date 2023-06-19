function [distribution] = computeDistribution( difficulty, numberOfDice, ...
        dieGenerator, numberOfRolls )    
    distribution = zeros(20,1);

    for ii = 1:numberOfRolls        
        result = rollDicePool( difficulty, numberOfDice, dieGenerator);
        index = result + 1;
        distribution(index) = distribution(index) + 1;
    end

    distribution = distribution / sum(distribution);
end