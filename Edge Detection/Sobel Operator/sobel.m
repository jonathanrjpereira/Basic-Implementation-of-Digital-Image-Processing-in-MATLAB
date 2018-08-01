%Sobel

clc;
clear all;
a=imread('circuit.tif');
[x y]=size(a);
w=[-1 0 1; -2 0 2; -1 0 1];
w1=[-1 -2 -1; 0 0 0; 1 2 1];
%BW2 = edge(a,'Prewitt');
a=double(a);
for m=2:1:x-1
    for n=2:1:y-1
        r(m,n)=w(1)*a(m-1,n-1)+ w(2)*a(m,n-1)+w(3)*a(m+1,n-1)+w(4)*a(m-1,n)+w(5)*a(m,n)+w(6)*a(m+1,n)+w(7)*a(m-1,n+1)+w(8)*a(m,n+1)+w(9)*a(m+1,n+1);
        r1(m,n)=w1(1)*a(m-1,n-1)+ w1(2)*a(m,n-1)+w1(3)*a(m+1,n-1)+w1(4)*a(m-1,n)+w1(5)*a(m,n)+w1(6)*a(m+1,n)+w1(7)*a(m-1,n+1)+w1(8)*a(m,n+1)+w1(9)*a(m+1,n+1);
    end
end
z=r+r1;

%for m=1:1:x
 %   for n=1:1:y
subplot(1,4,1);
imshow(uint8(a));
subplot(1,4,2);
imshow(uint8(r));
subplot(1,4,3);
imshow(uint8(r1));
subplot(1,4,4);
imshow(uint8(z));
