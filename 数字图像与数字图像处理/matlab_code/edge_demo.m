I = imread("D:\OneDrive - cozecn\�Զ���\����ͼ��������ͼ����\matlab_code\BOOK\vegatable.png");
%%imshow(I)
imshow(I);
I1=rgb2gray(I);
figure();

%BW1 = edge(I,'Sobel');
BW1 = edge(I1,'Sobel');%sobel��Ե�������
BW2 = edge(I1,'roberts'); %Roberts��Ե������� 
BW3 = edge(I1,'prewitt'); %prewitt��Ե������� 
BW4 = edge(I1,'log');%log��Ե�������
BW5 = edge(I1,'canny');%canny��Ե������� 
BW6 = edge(I1,'zerocross');%zerocross��Ե�������
subplot(2,4,1),imshow(I),title('ԭͼ','FontSize',16); 
subplot(2,4,2),imshow(I1),title('�Ҷ�ͼ','FontSize',16); 
subplot(2,4,3),imshow(BW1),title('sobel','FontSize',16) 
subplot(2,4,4),imshow(BW2),title('roberts','FontSize',16) 
subplot(2,4,5),imshow(BW3),title('prewitt','FontSize',16) 
subplot(2,4,6),imshow(BW4),title('log','FontSize',16) 
subplot(2,4,7),imshow(BW5),title('canny','FontSize',16)
subplot(2,4,8),imshow(BW5),title('zerocross','FontSize',16)
