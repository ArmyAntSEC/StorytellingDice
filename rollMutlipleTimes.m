function [results] = rollMutlipleTimes( difficulty, numberOfDice, ...
        dieGenerator, numberOfRolls )    
    results = zeros(numberOfRolls,1);

    for ii = 1:numberOfRolls        
        result = rollDicePool( difficulty, numberOfDice, dieGenerator);       
        results(ii) = result;
    end   
end