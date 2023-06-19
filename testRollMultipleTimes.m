classdef testRollMultipleTimes < matlab.unittest.TestCase
        

    methods(TestClassSetup)
        % Shared setup for the entire test class
    end
    
    methods(TestMethodSetup)    
    end
    
    methods(Test)
        % Test methods
        
        function testDistributionSingleDieSingleRoll(testCase)
            fakeRoller( 8 )
            resultList = rollMutlipleTimes( 8, 1, @fakeRoller, 1);                        
            testCase.verifyEqual(resultList, 1);
        end

        function testDistributionOneDiceTwoRolls(testCase)
            fakeRoller( [3 8] )
            resultList = rollMutlipleTimes( 8, 1, @fakeRoller, 2);                                            
            testCase.verifyEqual(resultList, [0; 1]);
        end        

        function testDistributionTwoDiceTwoRolls(testCase)
            fakeRoller( [3 8 9 8] )
            resultList = rollMutlipleTimes( 8, 2, @fakeRoller, 2);                                            
            testCase.verifyEqual(resultList, [1; 2]);
        end        
        
    end
    
end