% zeros(4,4)
% ones(4,4)
% true(4,4)
% false(4,4)
% magic(4) %每行每列对角线相等
% rand(4,4) % 0,1随机
% randn(4,4) % 正态随机
% 
% a=[1,2;3,4]
% b=[4,3;2,1]
% c=a.*b
% d=mat2gray(c)
% d=a(:)
% d.'    .' 转置
%  ctrl R T
% 
% figure(10)          % define figure
% subplot(2,2,1);     % subplot(x,y,n)x表示显示的行数，y表示列数，n表示第几幅图片
% plot(...);
% figure(1) plot() figure(2) plot()
% size(A,1) 维度 行 列 x
% t= input('massage')
% disp('A')
% 第三章
%imadjust(f,[lowin highin],[lowout highout ],gamma) in 映射到 out
% 3.3
% figure(1);bar(h2,h1);figure(2);imhist(a); 柱状图 默认直方图(f,b)b灰度个数
% numel(f)像素个数 stem绘图 plot绘图
% histeq(f,b) 直方图均质化\

% 3.5 不理解 非线性空间滤波

% subplot(2,4,1),imshow(a),hold on; 
% g11=imfilter(a,w,'replicate');  
% subplot(2,4,2),imshow(g11),hold on;
% w=fspecial('type',parameter) 参数parameter
% w=fspecial('laplacian',alpha) alpha 0,1

%
