close all;
clear all;

image = imread('plate.jpg');
%figure,imshow(image);
image = imresize(image, [480 NaN]);
%figure,imshow(image);
image_gray = rgb2gray(image);
%figure,imshow(image_gray);
image_gray = imgaussfilt(image_gray,0.5);
%figure,imshow(image_gray);

im_binary = im2bw(image_gray);
%figure,imshow(im_binary);
image = edge(image_gray, 'sobel');
%figure,imshow(image);

image = imdilate(image, strel('diamond', 2));
%figure,imshow(image);
image = imfill(image, 'holes');
%figure,imshow(image);
image = imerode(image, strel('diamond', 10));
%figure,imshow(image);

im_struct=regionprops(image,'BoundingBox','Area', 'Image');
area = im_struct.Area;
count = numel(im_struct);
max= area;
BoundingBox = im_struct.BoundingBox;
for i=1:count
   if max<im_struct(i).Area
       max=im_struct(i).Area;
       BoundingBox=im_struct(i).BoundingBox;
       
   end
end 
%figure,imshow(image);

%all above step are to find location of number plate

image = imcrop(im_binary, BoundingBox);
%figure,imshow(image);
imgcompl=imcomplement(image);
%figure,imshow(imgcompl);
imgfilt=bwareaopen(imgcompl,150);

figure,imshow(imgfilt);
txt= ocr(imgfilt);

disp(txt);



