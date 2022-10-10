clc;
close all;
clear;

r=rgb2gray(imread('Shrin8.jpg'));
[m,n]=size(r);
a=85;
b=171;
for i=1:m
    for j=1:n
        if(r(i,j)<=a)
            s1(i,j)=0;
        else 
            if(r(i,j)<=b)
                s1(i,j)=255;
            else
                s1(i,j)=0;
            end
        end
    end
end

for i=1:m
    for j=1:n
        if r(i,j)<= a
            s2(i,j)=r(i,j);
        else 
            if r(i,j)<=b
                s2(i,j)=255;
            else 
                s2(i,j)=r(i,j);
            end 
        end
    end
end


s1=im2uint8(mat2gray(s1));
s2=im2uint8(mat2gray(s2));

figure
subplot(1,3,1);
imshow(r);title('Original Image');
subplot(1,3,2);
imshow(s1);title('Gray level Slicing- approach1');
subplot(1,3,3);
imshow(s2);title('Gray level slicing- approach2');

figure
title('Gray Level Slicing');
hold on
p1=plot(r,s1,'r');
p2=plot(r,s2,'m');
xlabel(' Input pixel (r) --->');
ylabel('Output pixel (s) --->');
legend([p1(1,1) p2(1,1)],{'approach1','approach2'});
hold off