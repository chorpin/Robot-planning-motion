function PNext=PursueStrategy(Epre,E,P1,P2,P3)% E has taken the next step
xv=[P1(1,1),P2(1,1),P3(1,1)];
yv=[P1(2,1),P2(2,1),P3(2,1)];
[in,on]=inpolygon(E(1,1),E(2,1),xv,yv);
if in
    G=GapIndicator(E,P1,P2,P3);
    if G==1
        [Pnext]=Shrink(Epre,E,P1,P2,P3);
    elseif G==0
        Pnext(:,1)=Catch(P1,E);
        Pnext(:,2)=Catch(P2,E);
        Pnext(:,3)=Catch(P3,E);    
    end
elseif ~in
    [Pnext]=Intercept(Epre,E,P1,P2,P3);
end
PNext=Pnext;
end


