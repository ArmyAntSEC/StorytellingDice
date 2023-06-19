function [result] = rollDicePool( difficulty, numberOfDice, dieGenerator)
    result = 0;
    for ii = 1:numberOfDice
        result = result + rollOneDie(difficulty, dieGenerator);
    end
end