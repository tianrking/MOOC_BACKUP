I = imread("D:\OneDrive - cozecn\自动化\数字图像与数字图像处理\matlab_code\BOOK\vegatable.png");
%%imshow(I)
imshow(I);
I1=rgb2gray(I);
figure();

%BW1 = edge(I,'Sobel');
BW1 = edge(I1,'Sobel');%sobel边缘检测算子
BW2 = edge(I1,'roberts'); %Roberts边缘检测算子 
BW3 = edge(I1,'prewitt'); %prewitt边缘检测算子 
BW4 = edge(I1,'log');%log边缘检测算子
BW5 = edge(I1,'canny');%canny边缘检测算子 
BW6 = edge(I1,'zerocross');%zerocross边缘检测算子
subplot(2,4,1),imshow(I),title('原图','FontSize',16); 
subplot(2,4,2),imshow(I1),title('灰度图','FontSize',16); 
subplot(2,4,3),imshow(BW1),title('sobel','FontSize',16) 
subplot(2,4,4),imshow(BW2),title('roberts','FontSize',16) 
subplot(2,4,5),imshow(BW3),title('prewitt','FontSize',16) 
subplot(2,4,6),imshow(BW4),title('log','FontSize',16) 
subplot(2,4,7),imshow(BW5),title('canny','FontSize',16)
subplot(2,4,8),imshow(BW5),title('zerocross','FontSize',16)
