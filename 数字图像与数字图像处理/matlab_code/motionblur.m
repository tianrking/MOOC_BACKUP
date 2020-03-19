function h=motionblur(dirangle,winsize)
if nargin<2
 winsize=9; %默认窗口大小
end
h=zeros(winsize); %FIR 窗口
ext=(winsize-1)/2;
% 根据设定参数生成模糊图像
if (abs(abs(dirangle)-90) >=45) & (abs(abs(dirangle)-270)>=45),
 slope=tan(dirangle*pi/180);
 rloc=round(slope*[-ext:ext]);
 for i=1:winsize,
 h(ext-rloc(i)+1,i)=1;
 end
else
 slope=cot(dirangle*pi/180);
 cloc=round(slope*[-ext:ext]);
 for i=1:winsize,
 h(i,ext-cloc(i)+1)=1;
 end
end 