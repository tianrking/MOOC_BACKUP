clc;clear;
s=what;
p=s.path;
I=imread("D:\OneDrive - cozecn\自动化\数字图像与数字图像处理\matlab_code\BOOK\vegatable.png");
I1=rgb2gray(I);
[m,n]=size(I1);
x=2:m-1;
y=2:n-1;
flag=0.0001;%阀值
%index=find(abs(I1(x,y)-I1(x-1,y))>flag...
%           |abs(I1(x,y)-I1(x,y-1))>flag...
%           |abs(I1(x,y)-I1(x,y+1))>flag...
%           |abs(I1(x,y)-I1(x+1,y))>flag);
%edge=ones(m-2,n-2);
%edge(index)=0;

%subplot(1,3,1),imshow(I);title('原始图像');
%subplot(1,3,2),imshow(I1);title('灰度图像');
%%subplot(1,3,3),imshow(edge,[]);title('自定义边缘图像');

GG=10;
subplot(4,4,1),imshow(I);title('原始图像');
subplot(4,4,2),imshow(I1);title('灰度图像');
for tt = 1:14
    flag=  flag*exp(1);
    index=find(abs(I1(x,y)-I1(x-1,y))>flag...
           |abs(I1(x,y)-I1(x,y-1))>flag...
           |abs(I1(x,y)-I1(x,y+1))>flag...
           |abs(I1(x,y)-I1(x+1,y))>flag);
    edge=ones(m-2,n-2);
    edge(index)=0;
    %figure();
    subplot(4,4,2+tt),imshow(edge,[]);title("边缘"+flag);
end