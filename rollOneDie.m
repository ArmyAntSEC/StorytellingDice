function [numberOfSuccesses] = rollOneDie(difficulty, dieGenerator)         
    dieValue = dieGenerator();
    if ( checkForReroll( dieValue) ) 
        numberOfSuccesses =  1 + rollOneDie( difficulty, dieGenerator);
    else
        numberOfSuccesses = double ( checkResult( difficulty, dieValue));
    end   
    numberOfSuccesses = min(numberOfSuccesses, 20); %Cap at 20
end

function [isSuccess] = checkResult( difficulty, value )
    isSuccess = value >= difficulty;
end

function [isReroll] = checkForReroll( value )
    isReroll = value >= 10;
end
