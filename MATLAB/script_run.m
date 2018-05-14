% Code critical to our group to open a stack file, 
% then segment cells using a user-defined threshold! Returns an array of
% segemented cells.
% File format must be the same used in DCC group on the FV-300.

% Change variable names here:
inputFilename = 'Stack.tif';
outputFilename = 'Segmented.tif';
threshold = 120; % from discussion with Paul
allImages = [];

allImages = readStack(inputFilename);
thresholdedImages = thresholdStack(allImages, threshold);
writeStack(allImages, outputFilename);


