function [ allImages ] = readStack( inputFilename )
%readStack read stack
%   Detailed explanation goes here
    allImages = [];
    
    info = imfinfo(inputFilename);
    numImages = numel(info);

    for k = 1:numImages 
        a = imread(inputFilename, k);
        allImages = cat(3, allImages, a);
    end

end

