% Code critical to our group to open a stack file, 
% then segment cells using a user-defined threshold! Returns an array of
% segemented cells.
% File format must be the same used in DCC group on the FV-300.

% Change variable names here:
stack = 'Stack.tif';
out = 'Segmented.tif';
threshold = 120; % from discussion with Paul
im = [];

for k = 1:5 % Always 5 images
    a = imread(stack, k);
    im = cat(3, im, a); % concat all images along 3rd dimension
end


for i=1:512
    for j=1:512
        for k=1:5
            if im(i,j,k) < threshold % if lower than threshold set to 0
               im(i,j,k) = 0; 
            end
        end
    end 
end

imwrite(im(:,:,1),out);
for k = 2:5 % Always 5 images
    imwrite(im(:,:,1),out,'WriteMode','append'); % append images
end

