%thresholding
%threshold=120
clear all;
a=imread('pout.tif');
[m n]=size(a);

t=input('enter the threshold value');
for i=1:1:m
 for  j=1:1:n
     if (a(i,j)<t)
         b(i,j)=0;
     else
     b(i,j)=255;
     end
 end
end
subplot(1,2,1)
imshow(a);
subplot(1,2,2)
imshow(b);
 
