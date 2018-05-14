% Run these tests with run(TestDiffraction) in the console.
classdef testSegmentation< matlab.unittest.TestCase
    methods (Test)
        
        function testATest(testCase)      
            testCase.verifyEqual(2+3,5,'2+3 not equal to 5?');
        end
        
        function testReadStackCheckDimensions(testCase)
            images = readStack('Stack.tif');
            dim = size(images)
            testCase.verifyTrue(length(dim) == 3);
        end
        
        function testReadStackCheckReadout(testCase)
            images = readStack('Black.tif');
            dim = size(images)
            testCase.verifyTrue(length(dim) == 3);
        end
        
        function testBlackStackIsBlacks(testCase)
            testBlackStack = testCase.generateBlackStack();
            testCase.verifyTrue(testBlackStack == 0);
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