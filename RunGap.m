function [Enext]=RunGap(E,Dpc)
%Just find the mid point of the guideline instead of the tangentline
x=(Dpc(1,1)+Dpc(3,1))/2;
y=(Dpc(2,1)+Dpc(4,1))/2;
L=sqrt((E(1,1)-x)^2+(E(2,1)-y)^2);
xx=x-E(1,1);
yy=y-E(2,1);
Enext(1,1)=E(1,1)+(xx*2/L);
Enext(2,1)=E(2,1)+(yy*2/L);
if Enext(1,1)<=-60
    Enext(1,1)=-60;
end
if Enext(1,1)>=60
    Enext(1,1)=60;
end
if Enext(2,1)<=-30
    Enext(2,1)=-30;
end
if Enext(2,1)>=30
    Enext(2,1)=30;
end
end
