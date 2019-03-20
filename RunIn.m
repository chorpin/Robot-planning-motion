function [Enext]=RunIn(E,P1,P2,P3)
Pn=FindFurthest(E,P1,P2,P3);
L=sqrt((E(1,1)-Pn(1,1))^2+(E(2,1)-Pn(2,1))^2);
xx=Pn(1,1)-E(1,1);
yy=Pn(2,1)-E(2,1);
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