function [Enext]=RunOutside(E,Pn,P1,P2,P3)
L=sqrt((E(1,1)-Pn(1,1))^2+(E(2,1)-Pn(2,1))^2);
xx=E(1,1)-Pn(1,1);
yy=E(2,1)-Pn(2,1);
Enext(1,1)=E(1,1)+(xx*2/L);
Enext(2,1)=E(2,1)+(yy*2/L);
m=0;
%Boundary Judgement
if Enext(1,1)<=-60
    Enext(1,1)=-60;
    m=1;%triger of RunStruggle
end
if Enext(1,1)>=60
    Enext(1,1)=60;
    m=1;
end
if Enext(2,1)<=-30
    Enext(2,1)=-30;
    m=1;
end
if Enext(2,1)>=30
    Enext(2,1)=30;
    m=1;
end
if m==1
    [Enext]=RunStruggle(E,P1,P2,P3);
end

end



