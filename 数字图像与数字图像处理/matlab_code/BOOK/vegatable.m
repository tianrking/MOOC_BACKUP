clc;clear;
s=what;
p=s.path;
I=imread("D:\OneDrive - cozecn\�Զ���\����ͼ��������ͼ����\matlab_code\BOOK\vegatable.png");
I1=rgb2gray(I);
[m,n]=size(I1);
x=2:m-1;
y=2:n-1;
flag=0.0001;%��ֵ
%index=find(abs(I1(x,y)-I1(x-1,y))>flag...
%           |abs(I1(x,y)-I1(x,y-1))>flag...
%           |abs(I1(x,y)-I1(x,y+1))>flag...
%           |abs(I1(x,y)-I1(x+1,y))>flag);
%edge=ones(m-2,n-2);
%edge(index)=0;

%subplot(1,3,1),imshow(I);title('ԭʼͼ��');
%subplot(1,3,2),imshow(I1);title('�Ҷ�ͼ��');
%%subplot(1,3,3),imshow(edge,[]);title('�Զ����Եͼ��');

GG=10;
subplot(4,4,1),imshow(I);title('ԭʼͼ��');
subplot(4,4,2),imshow(I1);title('�Ҷ�ͼ��');
for tt = 1:14
    flag=  flag*exp(1);
    index=find(abs(I1(x,y)-I1(x-1,y))>flag...
           |abs(I1(x,y)-I1(x,y-1))>flag...
           |abs(I1(x,y)-I1(x,y+1))>flag...
           |abs(I1(x,y)-I1(x+1,y))>flag);
    edge=ones(m-2,n-2);
    edge(index)=0;
    %figure();
    subplot(4,4,2+tt),imshow(edge,[]);title("��Ե"+flag);
end