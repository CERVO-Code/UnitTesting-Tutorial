function [ allImages ] = readStack( inputFilename )
%readStack read stack
%   Detailed explanation goes here
    allImages = [];
    for k = 1:5 
        a = imread(inputFilename, k);
        allImages = cat(3, allImages, a);
    end

end

