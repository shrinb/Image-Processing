clc;
close all;
clear;
im=rgb2gray(imread('Shrin8.jpg'));

ident=im;
neg=((2^8)-1)-im;

c=0.2;
img=im2double(im);
Log=c*log(double(im)+1);
invLog = exp(img).^(1/c)-1;

Log=im2uint8(mat2gray(Log));
invLog=im2uint8(mat2gray(invLog));

figure
subplot(1,5,1);
imshow(im);
title('Original');
subplot(1,5,2);
imshow(ident);
title('Identity');
subplot(1,5,3);
imshow(neg);
title('Negative');
subplot(1,5,4);
imshow(Log);
title('Log');
subplot(1,5,5);
imshow(invLog);
title('inverse Log');

figure
title('POINT PROCESSING')
hold on
p1=plot(im,ident,'r','LineWidth',2);
p2=plot(im,neg,'b','LineWidth',2);
p3=plot(im,Log,'c');
p4=plot(im,invLog,'m');
[~, hobj, ~, ~]=legend([p1(1,1) p2(1,1) p3(1,1) p4(1,1)],{'Identity','Negative','Log','Inverse Log'});
h = findobj(hobj,'type','line');
set(h, 'LineWidth', 2);
xlabel(' Input pixel (r) --->');
ylabel('Output pixel (s) --->');
hold off