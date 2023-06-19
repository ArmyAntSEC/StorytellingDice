classdef testSingleDieRoll < matlab.unittest.TestCase
    
    methods(TestClassSetup)
        % Shared setup for the entire test class
    end
    
    methods(TestMethodSetup)
        % Setup for each test
    end
    
    methods(Test)
        % Test methods
        
        function testRollSingleDieFail(testCase)
            fakeRoller( 1 );
            numberOfSuccesses = rollOneDie( 8, @fakeRoller );
            testCase.verifyEqual( numberOfSuccesses, 0 );            
        end

        function testRollSingleDieSucess(testCase)
            fakeRoller( 8 );
            numberOfSuccesses = rollOneDie( 8, @fakeRoller );
            testCase.verifyEqual( numberOfSuccesses, 1 );            
        end

        function testRollSingleDieRerollButSingleSuccess(testCase)
            fakeRoller( [10 4]  );
            numberOfSuccesses = rollOneDie( 8, @fakeRoller );
            testCase.verifyEqual( numberOfSuccesses, 1 );            
        end

        function testRollSingleDieRerollTwoSuccesses(testCase)
            fakeRoller( [10 8]  );
            numberOfSuccesses = rollOneDie( 8, @fakeRoller );
            testCase.verifyEqual( numberOfSuccesses, 2 );            
        end

        function testRollSingleDieRerollThreeoSuccesses(testCase)
            fakeRoller( [10 10 8]  );
            numberOfSuccesses = rollOneDie( 8, @fakeRoller );
            testCase.verifyEqual( numberOfSuccesses, 3 );            
        end

        function testRollSingleDieCapsAtTwenty(testCase)
            fakeRoller( [ 20*ones(25,1); 1]  );
            numberOfSuccesses = rollOneDie( 8, @fakeRoller );
            testCase.verifyEqual( numberOfSuccesses, 20 );            
        end
    end

    
end