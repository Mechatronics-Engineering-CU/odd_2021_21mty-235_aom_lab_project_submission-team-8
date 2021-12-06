
# Project overview 
Our project is based on the compression of large size tif image file into the smaller size image file without loosing its properties .here we used the matlab software for the compression of the image 
Required software is matlab and a large size tiff image 
Matlab code
~~~
close all;
clear all;
f1 = @(block_struct) dct2(block_struct.data);
f2 = @(block_struct) idct2(block_struct.data);
 
Im=imread('body2.tif');
imwrite(Im,'new.tif');
 
figure,imshow(Im);
J = blockproc(Im ,[8,8],f1);
depth = find(abs(j)<150);
J(depth) = zeros(size(depth));
k = blockproc(J ,[8,8], f2)/255;
figure,imshow(k);
k
imwrite(k,'newc.tif');
compression_ratio = numel(J)/numel(depth)
~~~
## [video demonistration ](https://github.com/Mechatronics-Engineering-CU/odd_2021_21mty-235_aom_lab_project_submission-team-8/blob/f0f0258a24334af6be95bbc4497329d45c7bb45a/TEAM-8/team8.mp4)





Learning outcomes 
After completion of this paper , we got to know about how a research paper is formulated and presented 
 From the project we have learned about the image compression of large size image file into smaller size image file without losing its properties 
We got to know that we can also compress any type of image file like jpge , tiff ,and etc
And also we have known that with help of matlab software we can do any type of compression of the different type of images
