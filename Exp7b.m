clc;
close all;
clear;
im=rgb2gray(imread('Shrin8.jpg'));
im=im2double(im);

op1=abs(im.^(0.1));
op2=abs(im.^(0.2));
op3=abs(im.^(0.25));
op4=abs(im.^(0.5));
op=abs(im.^(1));
op5=abs(im.^(2));
op6=abs(im.^(4));
op7=abs(im.^(5));
op8=abs(im.^(10));

im=uint8(255*im);
op1=uint8(255*op1);
op2=uint8(255*op2);
op3=uint8(255*op3);
op4=uint8(255*op4);
op=uint8(255*op);
op5=uint8(255*op5);
op6=uint8(255*op6);
op7=uint8(255*op7);
op8=uint8(255*op8);

figure
subplot(2,5,1);imshow(im);title('Original image');
subplot(2,5,2);imshow(op1);title('γ = 0.1');
subplot(2,5,3);imshow(op2);title('γ = 0.2');
subplot(2,5,4);imshow(op3);title('γ = 0.4');
subplot(2,5,5);imshow(op4);title('γ = 0.5');
subplot(2,5,6);imshow(op);title('γ = 1');
subplot(2,5,7);imshow(op5);title('γ = 2');
subplot(2,5,8);imshow(op6);title('γ = 4');
subplot(2,5,9);imshow(op7);title('γ = 5');
subplot(2,5,10);imshow(op8);title('γ = 10');

figure
title('GAMMA CORRECTION : s = r^γ')
hold on
p1=plot(im,op1,'r');
p2=plot(im,op2,'b');
p3=plot(im,op3,'y');
p4=plot(im,op4,'g');
p=plot(im,op,'k');
p5=plot(im,op5,'c');
p6=plot(im,op6,'m');
p7=plot(im,op7,'Color',[0.4940, 0.1840, 0.5560]	);
p8=plot(im,op8,"Color",[0.8500, 0.3250, 0.0980]);
xlabel(' Input pixel (r) --->');
ylabel('Output pixel (s) --->');
[~, hobj, ~, ~]=legend([p1(1,1) p2(1,1) p3(1,1) p4(1,1) p(1,1) p5(1,1) p6(1,1) p7(1,1) p8(1,1)], ...
    {'γ=0.1','γ=0.2','γ=0.4','γ=0.5','γ=1','γ=2','γ=4','γ=5','γ=10'},'FontSize',15);
h = findobj(hobj,'type','line');
set(h, 'LineWidth', 5);
hold off