%Logical operations on images
clc;
clear all;
close all;
a=imread('cameraman.tif');
subplot(5,3,1);
imshow(a);
title('image a');
b=imread('rice.png');
subplot(5,3,2);
imshow(b);
title('image b');
c=zeros(size(a));
for (x=100:200)
    for(y=100:200)
        c(x,y)=255;
    end
end
subplot(5,3,3);
imshow(c);
title('image c');
c=uint8(c);
%logical operations
lr1=bitand(a,c);  %AND Operation
subplot(5,3,4);
imshow(lr1);
title('a and c');
lr2=bitand(b,c);
subplot(5,3,5);
imshow(lr2);
title('b and c');
lr3=bitand(a,b);
subplot(5,3,6);
imshow(lr3);
title('a and b');

lr4=bitor(a,c);   %OR Operation
subplot(5,3,7);
imshow(lr4);
title('a or c');
lr5=bitor(b,c);
subplot(5,3,8);
imshow(lr5);
title('b or c');
lr6=bitor(a,b);
subplot(5,3,9);
imshow(lr6);
title('a or b');

lr7=bitxor(a,c);    %ExOR Operation
subplot(5,3,10);
imshow(lr7);
title('a xor c');
lr8=bitxor(b,c);
subplot(5,3,11);
imshow(lr8);
title('b xor c');
lr9=bitxor(a,b);
subplot(5,3,12);
imshow(lr9);
title('a xor b');

lr10=bitcmp(a);     %Complement Operation
subplot(5,3,13);
imshow(lr10);
title('not a');
lr11=bitcmp(b);
subplot(5,3,14);
imshow(lr11);
title('not b');
lr12=bitcmp(c);
subplot(5,3,15);
imshow(lr12);
title('not c');
