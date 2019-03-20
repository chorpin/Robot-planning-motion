function ENext=EvasionStrategy(E,P1,P2,P3)
xv=[P1(1,1),P2(1,1),P3(1,1)];
yv=[P1(2,1),P2(2,1),P3(2,1)];
[in,on]=inpolygon(E(1,1),E(2,1),xv,yv);
if (~in)&&(~on)
    Pn=FindNearest(E,P1,P2,P3);
    Enext=RunOutside(E,Pn,P1,P2,P3);
elseif on==1
    Enext=RunOn(E,P1,P2,P3);
elseif (~on)&&in
    C1=CenterApollonius(P1,E);
    C2=CenterApollonius(P2,E);
    C3=CenterApollonius(P3,E);
    R1=RadiusApollonius(P1,E);
    R2=RadiusApollonius(P2,E);
    R3=RadiusApollonius(P3,E);
    d12=sqrt((C1(1,1)-C2(1,1))^2+(C1(2,1)-C2(2,1))^2);
    d13=sqrt((C1(1,1)-C3(1,1))^2+(C1(2,1)-C3(2,1))^2);
    d23=sqrt((C2(1,1)-C3(1,1))^2+(C2(2,1)-C3(2,1))^2);
    Ind=[0;0;0];
    if d12>(R1+R2)
        Ind(3,1)=1;
    end% Create an indicator for the gap
    if d13>(R1+R3)
        Ind(2,1)=1;
    end% Create an indicator for the gap
    if d23>(R2+R3)
        Ind(1,1)=1;
    end% Create an indicator for the gap
    Dp(:,1)=[P2;P3];
    Dp(:,2)=[P1;P3];
    Dp(:,3)=[P1;P2];
    for i=1:3
        if Ind(i,1)==1
            Enext=RunGap(E,Dp(:,i));
            break;
        end
    end
    if (Ind(1,1)==0)&&(Ind(2,1)==0)&&(Ind(3,1)==0)
        Enext=RunIn(E,P1,P2,P3);
    end
end
ENext=Enext;
end
        
            
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    