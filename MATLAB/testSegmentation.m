% Run these tests with run(TestDiffraction) in the console.
classdef testSegmentation< matlab.unittest.TestCase
    methods (Test)
        
        function testATest(testCase)      
            testCase.verifyEqual(2+3,5);
        end
        
        function testReadStack(testCase)
            images = readStack('Stack.tif');
            dim = size(images)
            testCase.verifyTrue(dim(1) == 512);            
            testCase.verifyTrue(dim(2) == 512);
            testCase.verifyTrue(dim(3) == 5);
        end
        
        function testThresholdStack(testCase)
            images = readStack('Stack.tif');
            thresholdedImages = thresholdStack(images, 120);
            dim = size(thresholdedImages)
            testCase.verifyTrue(dim(1) == 512);            
            testCase.verifyTrue(dim(2) == 512);
            testCase.verifyTrue(dim(3) == 5);            
        end
        
        function blackStack = generateBlackStack(testCase)
            blackStack = zeros(512,512,10);
        end

        function whiteStack = generateWhiteStack(testCase)
            whiteStack = ones(512,512,10);
        end
    end
end