function runExamples()

fns = [
    'Images/IMG_3125.JPG';
    'Images/IMG_3127.JPG';
    'Images/IMG_3128.JPG';
    'Images/IMG_3130.JPG';
    'Images/IMG_3132.JPG';
    'Images/IMG_3133.JPG';
    'Images/IMG_3141.JPG';
    'Images/IMG_3142.JPG';
    ];

for i = 1:size(fns,1)
    I = im2double(imread(fns(i,:)));
    % imread does not use the EXIF rotation, so we manually rotate
    I = permute(I,[2 1 3]); 
    I = I(:,end:-1:1,:);
    rectifyDocument(I);
end