function [Pnext]=Shrink(Epre,E,P1,P2,P3)
%Prediction for E
Ei(1,1)=1000*(E(1,1)-Epre(1,1))+E(1,1);
Ei(2,1)=1000*(E(2,1)-Epre(2,1))+E(2,1);
PM=[P1 P2 P3 P1];
ii=0;
for i=1:3
    k1=(PM(2,i+1)-PM(2,i))/(PM(1,i+1)-PM(1,i));
    b1=PM(2,i)-k1*PM(1,i);
    k2=(Ei(2,1)-E(2,1))/(Ei(2,1)-E(2,1));
    b2=E(2,1)-k2*E(1,1);
    X=(b2-b1)/(k1-k2);
    Y=k1*X+b1;
    if (X<=max(E(1,1),Ei(1,1)))&&(X>=min(E(1,1),Ei(1,1)))&&(X<=max(PM(1,i+1),PM(1,i)))&&(X>=min(PM(1,i+1),PM(1,i)))&&(Y<=max(E(2,1),Ei(2,1)))&&(Y>=min(E(2,1),Ei(2,1)))&&(Y<=max(PM(2,i+1),PM(2,i)))&&(Y>=min(PM(2,i+1),PM(2,i)))
        Ej(1,1)=(E(1,1)-Epre(1,1))+E(1,1);
        Ej(2,1)=(E(2,1)-Epre(2,1))+E(2,1);
        PM(:,i)=Catch(PM(:,i),Ej);
        PM(:,i+1)=Catch(PM(:,i+1),Ej);
        break;
%         PM(:,1)=Catch(PM(:,1),Ej);
%         PM(:,2)=Catch(PM(:,2),Ej);
%         PM(:,3)=Catch(PM(:,3),Ej);
    end
    ii=ii+1;
end
if ii==3
    Ej(1,1)=(E(1,1)-Epre(1,1))+E(1,1);
    Ej(2,1)=(E(2,1)-Epre(2,1))+E(2,1);
    PM(:,1)=Catch(PM(:,1),Ej);
    PM(:,2)=Catch(PM(:,2),Ej);
    PM(:,3)=Catch(PM(:,3),Ej);
end
Pnext(:,1)=PM(:,1);
Pnext(:,2)=PM(:,2);
Pnext(:,3)=PM(:,3);
        
        
        
        
        
        
        
        
        
        
    