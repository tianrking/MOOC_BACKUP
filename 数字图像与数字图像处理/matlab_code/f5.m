clear all
close all
I{1}=double(imread('IMG_20171002_203345.jpg'));
I{1}=I{1}/255;
G{1}=rgb2gray(I{1})
figure(1),subplot(3,4,1),imshow(I{1},[]),hold on
subplot(3,4,4),imshow(G{1}),hold on
I{2}=double(imread('IMG_20171002_203345.jpg'));
I{2}=I{2}/255;
G{2}=rgb2gray(I{1})
subplot(3,4,8),imshow(G{2}),hold on

subplot(3,4,5),imshow(I{2},[]),hold on
for m=1:2
 Index=0;
 for lemta=[0.5 5]
 Index=Index+1;
 F{m}{Index}=I{m}.^lemta;
 subplot(3,4,(m-1)*4+Index+1),imshow(F{m}{Index},[])
 end
end 

test=[1,0.5,0; 0.5,1,0;0,0,1 ]
gama1=0.5
gama2=5
test_gama1=test.^gama1
test_gama2=test.^gama2
subplot(3,4,9),imshow(test),hold on
subplot(3,4,10),imshow(test_gama1),hold on
subplot(3,4,11),imshow(test_gama2),hold on