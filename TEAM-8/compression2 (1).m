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