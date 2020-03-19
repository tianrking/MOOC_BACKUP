clear all
close all

%0. 读图像
%I=double(imread('lena_gray.jpg'));
I=(imread('IMG_20171002_203345.jpg'));
figure,imshow(I,[])
N=32;
Hist_image=hist(I(:),N); %直方图
Hist_image=Hist_image/sum(Hist_image);
Hist_image_cumulation=cumsum(Hist_image); %累计直方图
figure,stem([0:N-1],Hist_image); 