function h=motionblur(dirangle,winsize)
if nargin<2
 winsize=9; %Ĭ�ϴ��ڴ�С
end
h=zeros(winsize); %FIR ����
ext=(winsize-1)/2;
% �����趨��������ģ��ͼ��
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