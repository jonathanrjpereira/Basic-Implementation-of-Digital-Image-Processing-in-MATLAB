%Dilation Erosion
A=eye(50);
Acom= magic(50);
for i=1:50
    for j=1:50
        Acom(i,j)=rem(Acom(i,j),2);
    end
end
%Structuring element
B=[1 0 1; 0 0 1; 1 1 0];
%Pad zeros on all the sides
C=padarray(A,[1 1]);
%Intialize a matrix of matrix size A with zeros
D=false(size(A));
for i=1:size(C,1)-2
    for j=1:size(C,2)-2
        %Perform logical AND operation
        D(i,j)=sum(sum(B&C(i:i+2,j:j+2)));
    end
end
%Structuring element
B1=[1 1 0];
%Pad array with ones on both sides
E=padarray(Acom,[0 1],1);
%Intialize the matrix D of size A with zeros
F=false(size(Acom));
for i=1:size(E,1)
    for j=1:size(E,2)-2
        In=E(i,j:j+2);
        %Find the position of ones in the structuring element
        In1=find(B1==1);
        %Check whether the elements in the window have the value one in the
        %same positions of the structuring element
        if(In(In1)==1)
        F(i,j)=1;
        end
    end
end
subplot(2,2,1),
imshow(A), title('Original Dilated');
subplot(2,2,2),
imshow(D), title('Dilated');
subplot(2,2,3),
imshow(Acom), title('Original Eroded');
subplot(2,2,4),
imshow(F), title('Eroded');
