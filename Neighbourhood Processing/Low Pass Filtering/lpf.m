%Low pass Filtering

clc;
clear all;
a=imread('pout.tif');
b=imnoise(a,'gaussian');
a=double(a);
b=double(b);
w=[1/9 1/9 1/9;1/9 1/9 1/9;1/9 1/9 1/9];
[m n]=size(b);
for i=2:1:m-1
    for j=2:1:n-1
r(i,j)=b(i-1,j-1)*w(1)+b(i-1,j)*w(2)+ b(i-1,j+1)*w(3)+ b(i,j-1)*w(4)+ b(i,j)*w(5)+ b(i,j+1)*w(6)+ b(i+1,j-1)*w(7)+ b(i+1,j)*w(8)+ b(i+1,j+1)*w(9) ;
    end
end
subplot(3,3,1)
imshow(uint8(a));
title('Original Image')
subplot(3,3,2)
imshow(uint8(b));
title('Image with Gaussian Noise')
subplot(3,3,3)
imshow(uint8(r));
title('Low Pass Filtered Image')
