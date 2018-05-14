function [ allImages] = thresholdStack( allImages, thresholdValue )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

dim = size(allImages)
for i=1:dim(1)
    for j=1:dim(2)
        for k=1:dim(3)
            if allImages(i,j,k) < thresholdValue
               allImages(i,j,k) = 0; 
            end
        end
    end 
end

end

