%Arithmetic
clc;
clear all;
a = imread('cameraman.tif'); %Read Images
b = imread('rice.png');

I = imadd(a,b);              % Use inbuilt MatLab functions to Add and Subtract A & B.
Y = imsubtract(a,b);
Z = mean2(a); %Mean of all pixel values of Image A.
disp(Z);
p = a+200;
disp(p);
V = a.*2; %Change the mean value in order to change the brightness.
B = a./2;
subplot(3,3,1);
imshow(a);
Title('Original image A');
subplot(3,3,2);
imshow(b);
Title('Original image B');
subplot(3,3,3);
imshow(I);
Title('Added image A+B');
subplot(3,3,4);
imshow(Y);
Title('Subtracted image A-B');
subplot(3,3,5);
imshow(p);
Title('Brightned Image A');
subplot(3,3,6);
imshow(V);
Title('Darkened Image A');
subplot(3,3,7);
imshow(B);

%mean value obtained=118.7245
