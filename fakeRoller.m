function [result] = fakeRoller(sequence)
    persistent resultSequence index

    if ( nargin == 1 ) 
        resultSequence = sequence;
        index = 1;
    else
        result = resultSequence(index);
        index = index + 1;
    end
end

