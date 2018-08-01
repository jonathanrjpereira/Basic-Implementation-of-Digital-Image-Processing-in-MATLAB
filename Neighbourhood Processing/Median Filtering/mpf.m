%Median Filtering

clc;
clear all;
a=imread('coins.png');
c=imnoise(a,'salt & pepper',0.02);
c=double(c);

[m n]=size(a);
for i=2:1:m-1
    for j=2:1:n-1
r=[c(i-1,j-1) c(i-1,j) c(i-1,j+1) c(i,j-1) c(i,j) c(i,j+1) c(i+1,j-1) c(i+1,j) c(i+1,j+1)];
   b=sort(r);
   d(i,j)= median(b);
  end
end

subplot(2,2,1)
imshow(uint8(a));
title('Original Image')
subplot(2,2,2)
imshow(uint8(c));
title('Image with Salt and Pepper Noise')
subplot(2,2,3)
imshow(uint8(d));
title('Median Filtered Image')
