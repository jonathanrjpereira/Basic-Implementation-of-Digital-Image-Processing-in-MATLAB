%IGS

clc;
clear all;

a=imread('cameraman.tif');
a=double(a);
%a=[12 12 13 13 57 54];
[row col]=size(a)
temp=dec2bin(0,8);
for x=1:1:row-1
    for y=1:1:col-1
        q=dec2bin(a(x,y),8);
        q1=[q(1) q(2) q(3) q(4)];
        a1(x,y)=bin2dec(q1);
        if a(x,y)>=240
            temp2=0;
        else
            temp1=[temp(5) temp(6) temp(7) temp(8)];
            temp2=bin2dec(temp1);
        end
        c=a(x+1,y+1)+temp2;
        c1=dec2bin(c,8);
        temp=c1;
        igs1=[c1(1) c1(2) c1(3) c1(4)];
        code(x,y)=bin2dec(igs1);
    end
end

subplot(1,2,2)
imshow(code);
title('Compressed');
subplot(1,2,1)
imshow(uint8(a));
title('Original');
