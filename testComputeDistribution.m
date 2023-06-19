classdef testComputeDistribution < matlab.unittest.TestCase
    
    properties
        expectedDistribution;
    end

    methods(TestClassSetup)
        % Shared setup for the entire test class
    end
    
    methods(TestMethodSetup)
        function setupBaseDistribution(testCase) 
            testCase.expectedDistribution = zeros(20,1);
        end
    end
    
    methods(Test)
        % Test methods
        
        function testDistributionSingleDieSingleRoll(testCase)
            fakeRoller( 8 )
            distribution = computeDistribution( 8, 1, @fakeRoller, 1);            
            testCase.expectedDistribution(2) = 1;            
            testCase.verifyEqual(distribution, testCase.expectedDistribution);
        end

        function testDistributionTwoDiceNoReroll(testCase)
            fakeRoller( [3 8] )
            distribution = computeDistribution( 8, 2, @fakeRoller, 2);                                
            testCase.expectedDistribution(1) = 1;
            testCase.expectedDistribution(2) = 1;
            testCase.verifyEqual(distribution, testCase.expectedDistribution);
        end        
    end
    
end