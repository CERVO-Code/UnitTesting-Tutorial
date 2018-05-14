function [ ] = writeStack( allImages, outputFilename )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

imwrite(allImages(:,:,1),outputFilename);
for k = 2:5 % Always 5 images
    imwrite(allImages(:,:,1),outputFilename,'WriteMode','append');
end

end

