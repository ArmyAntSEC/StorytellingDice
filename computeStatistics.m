function [median, firstQuartile, thirdQuartile] = computeStatistics( results )
    P = prctile( results, [25, 50, 75]);
    firstQuartile = P(1);
    median = P(2);
    thirdQuartile = P(3);
end