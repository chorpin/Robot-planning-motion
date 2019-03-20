function Pn=Catch(P,E)
L=sqrt((E(1,1)-P(1,1))^2+(E(2,1)-P(2,1))^2);
xx=E(1,1)-P(1,1);
yy=E(2,1)-P(2,1);
Pn(1,1)=P(1,1)+(xx*sqrt(3)/L);
Pn(2,1)=P(2,1)+(yy*sqrt(3)/L);