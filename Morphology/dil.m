%Dilation

A=imread('text.png');
A=im2bw(A);
%Structuring element
B2=getnhood(strel('line',7,90));
m=floor(size(B2,1)/2);
n=floor(size(B2,2)/2);
%Pad array on all the sides
C=padarray(A,[m n]);
D=false(size(A));
for i=1:size(C,1)-(2*m)
    for j=1:size(C,2)-(2*n)
        Temp=C(i:i+(2*m),j:j+(2*n));
        D(i,j)=max(max(Temp&B2));
    end
end
subplot(2,1,1),
imshow(A), title('Original')
subplot(2,1,2),
imshow(D), title('Dilated')
