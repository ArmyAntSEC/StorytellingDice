classdef testRollDicePool < matlab.unittest.TestCase
    
    methods(TestClassSetup)
        % Shared setup for the entire test class
    end
    
    methods(TestMethodSetup)
        % Setup for each test
    end
    
    methods(Test)
        % Test methods
        
        function testSingleDie(testCase)
            fakeRoller( 8 )
            result = rollDicePool( 8, 1, @fakeRoller);
            testCase.verifyEqual( 1, result );
        end

        function testTwoDiceOneSuccess(testCase)
            fakeRoller( [3 8] )
            result = rollDicePool( 8, 2, @fakeRoller);
            testCase.verifyEqual( 1, result );
        end

        function testTwoDiceTwoSuccessed(testCase)
            fakeRoller( [9 8] )
            result = rollDicePool( 8, 2, @fakeRoller);
            testCase.verifyEqual( 2, result );
        end
    end
    
end