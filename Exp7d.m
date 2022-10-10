clc;
close all;
clear;
m=127; 
E1=3;E2=5;E3=9;
im=rgb2gray(imread('Shrin8.jpg'));
r=double(im);
s1=1./(1+(m./r).^E1);      
s2=1./(1+(m./r).^E2);
s3=1./(1+(m./r).^E3);

r=im2uint8(mat2gray(r));
s1=im2uint8(mat2gray(s1));
s2=im2uint8(mat2gray(s2));
s3=im2uint8(mat2gray(s3));

hold on
title('Contrast Stretching');
p1=plot(r,s1,'r');
p2=plot(r,s2,'g');
p3=plot(r,s3,'b');
xlabel(' Input pixel (r) --->');
ylabel('Output pixel (s) --->');
legend([p1(1,1) p2(1,1) p3(1,1)],{'E=3','E=5','E=7'});
hold off

figure
title('Contrast Stretching');
subplot(1,4,1);
imshow(r);title('Original Image');
subplot(1,4,2);
imshow(s1);title('Contrast Stretching : E=3');
subplot(1,4,3);
imshow(s2);title('Contrast Stretching : E=5');
subplot(1,4,4);
imshow(s3);title('Contrast Stretching :E=7');