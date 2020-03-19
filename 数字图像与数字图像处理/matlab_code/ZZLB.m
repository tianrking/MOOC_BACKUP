x=imread('IMG_20171002_203345.jpg');
x=rgb2gray(x)

%x=[1 2 1 4 3;
   % 1 10 2 3 4 
  %  5 2 6 8 8;
 %   5 5 7 0 8;
%    5 6 7 8 9]
subplot(1,2,1),imshow(x),hold on
kk=medfilt2(x,[3 3]);
subplot(1,2,2),imshow(kk),hold on
kk


