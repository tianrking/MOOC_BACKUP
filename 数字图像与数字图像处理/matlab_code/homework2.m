
%a=linspace(0,256,8);
%a=1:32:257
%a=a-1
%for i=1:20
 %   for ii=1:8
  %      b(i,ii*2)=a(ii);
   %%end
%end

%imshow(b,[])
clear ,clear ALL
I=imread('D:\OneDrive - cozecn\����ͼ��������ͼ����\xd.jpg')
%imshow(I)
I=rgb2gray(I)
A=imread('D:\OneDrive - cozecn\����ͼ��������ͼ����\moon.jpg')
%B=imread('D:\OneDrive - cozecn\����ͼ��������ͼ����\parrot_bird_branch_117471_3840x2160.jpg')
%C=imadd(A,B)
imshow(A)
whos