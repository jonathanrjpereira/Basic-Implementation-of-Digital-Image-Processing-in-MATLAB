%Discrete Fourier Transform

clc;
a=imread('cameraman.tif');
figure(1)
imshow(a)
a=double(a);
[row col]=size(a);
const=sqrt(row*col);
for n=0:1:row-1
    for k=0:1:col-1
        W(n+1,k+1)=exp(-i*2*pi*n*k/const);
    end
end
X=W*a*W.';
figure(2)
imshow(X)
ff=fft2(a)

aimg=ifft2(ff);
figure(3)
imshow(abs(mat2gray(aimg)))
