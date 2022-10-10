clc;
close all;
clear;

a=127;

im=rgb2gray(imread('Shrin8.jpg'));
r=double(im);
[m,n]=size(im);
for i=1:m
    for j=1:n
        if r(i,j)<=a
            s(i,j)=0;
        else 
            s(i,j)=1;
        end
    end
end

r=im2uint8(mat2gray(r));
s=im2uint8(mat2gray(s));


figure
title('Thresholding');
p1=plot(r,s,'c');
xlabel(' Input pixel (r) --->');
ylabel('Output pixel (s) --->');
legend([p1(1,1)] ,{'thresholding at 127'});


figure
subplot(1,2,1);
imshow(r);title('Original Image');
subplot(1,2,2);
imshow(s);title('Thresholding at 127');