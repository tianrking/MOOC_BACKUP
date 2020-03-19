clear;
x=-2:0.06:2
y=-2:0.06:2
sigma=0.6
y=y'; 
for i=1:(4/0.06+1)
 xx(i,:)=x;
 yy(:,i)=y;
end
r=1/(2*pi*sigma^4)*((xx.^2+yy.^2)/(sigma^2)-2).*exp(-(xx.^2+yy.^2)/(sigma^2));
colormap(jet(16));
mesh(xx,yy,r); 