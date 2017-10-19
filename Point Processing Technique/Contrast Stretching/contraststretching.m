%Contrast stretching
%lt=5 and ut=10
close all;
close all;
clc;
a=imread('pout.tif');
subplot(2,1,1);
imshow(a);
[m,n]=size(a);
b=a;
t1=input('enter threshold value1');
t2=input('enter threshold value2');
for i=1:1:m
    for j=1:1:n
        if(a(i,j)<t1)
            b(i,j)=0.5*t1;
        else if(a(i,j)<t2 & a(i,j)>t1)
                b(i,j)=2*(a(i,j)-t1) + 0.5*t1;
            else
                b(i,j)=0.5*(a(i,j)-t2) + 2*(t2-t1) + 0.5*t1;
            end
        end
    end
end
subplot(2,1,2)
imshow(b);
