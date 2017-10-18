%Negative
clc;
clear all;
a = imread('pout.tif');
%a=zeros(10,10);
b=255-a;

subplot(2,2,1);
imshow(a);
subplot(2,2,2);
imshow(b);
c=imcrop(a(x,y),100,100);
subplot(2,2,3);
imshow(c);
