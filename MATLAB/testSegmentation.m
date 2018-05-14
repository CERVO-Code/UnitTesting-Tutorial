% Run these tests with run(TestDiffraction) in the console.
classdef testSegmentation< matlab.unittest.TestCase
    methods (Test)
        
        function testATest(testCase)      
            testCase.verifyEqual(2+3,5);
        end
    
        function testWhatIsAMesh(testCase)
            [x,y]=meshgrid(-2:1:2, -2:1:2);
            testCase.verifyEqual([ -2 -1 0 1 2; -2 -1 0 1 2; -2 -1 0 1 2; -2 -1 0 1 2;-2 -1 0 1 2 ], x);
            testCase.verifyEqual([ -2 -1 0 1 2; -2 -1 0 1 2; -2 -1 0 1 2; -2 -1 0 1 2;-2 -1 0 1 2 ]', y);
        end            

    end
end