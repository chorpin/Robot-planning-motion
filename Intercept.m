function [Pnext]=Intercept(Epre,E,P1,P2,P3)
d1=distance(P1,E);
d2=distance(P2,E);
d3=distance(P3,E);
Ej(1,1)=(E(1,1)-Epre(1,1))+E(1,1);% prediction for the next step
Ej(2,1)=(E(2,1)-Epre(2,1))+E(2,1);
D1=distance(P1,Ej);
D2=distance(P2,Ej);
D3=distance(P3,Ej);
Dif1=d1-D1;
Dif2=d2-D2;
Dif3=d3-D3;
Dif=[Dif1 Dif2 Dif3];
if (Dif1<=0)&&(Dif2<=0)&&(Dif3<=0)
    P1(1,1)=P1(1,1)+E(1,1)-Epre(1,1);% The other just follow the evader
    P1(2,1)=P1(2,1)+E(2,1)-Epre(2,1);
    P2(1,1)=P2(1,1)+E(1,1)-Epre(1,1);% The other just follow the evader
    P2(2,1)=P2(2,1)+E(2,1)-Epre(2,1);
    P3(1,1)=P3(1,1)+E(1,1)-Epre(1,1);% The other just follow the evader
    P3(2,1)=P3(2,1)+E(2,1)-Epre(2,1);
elseif Dif1==max(Dif)&&(Dif1>=0)
    P1=Catch(P1,Ej);
    P2(1,1)=P2(1,1)+E(1,1)-Epre(1,1);% The other just follow the evader
    P2(2,1)=P2(2,1)+E(2,1)-Epre(2,1);
    P3(1,1)=P3(1,1)+E(1,1)-Epre(1,1);% The other just follow the evader
    P3(2,1)=P3(2,1)+E(2,1)-Epre(2,1);
elseif Dif2==max(Dif)&&(Dif2>=0)
    P2=Catch(P2,Ej);
    P1(1,1)=P1(1,1)+E(1,1)-Epre(1,1);% The other just follow the evader
    P1(2,1)=P1(2,1)+E(2,1)-Epre(2,1);
    P3(1,1)=P3(1,1)+E(1,1)-Epre(1,1);% The other just follow the evader
    P3(2,1)=P3(2,1)+E(2,1)-Epre(2,1);
elseif Dif3==max(Dif)&&(Dif3>=0)
    P3=Catch(P3,Ej);
    P1(1,1)=P1(1,1)+E(1,1)-Epre(1,1);% The other just follow the evader
    P1(2,1)=P1(2,1)+E(2,1)-Epre(2,1);
    P2(1,1)=P2(1,1)+E(1,1)-Epre(1,1);% The other just follow the evader
    P2(2,1)=P2(2,1)+E(2,1)-Epre(2,1);
end
Pnext=[P1 P2 P3];
    
    
    
    
    
    
    
    
    

    
    
    
    
    
    