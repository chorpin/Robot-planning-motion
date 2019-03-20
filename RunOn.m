function [Enext]=RunOn(E,P1,P2,P3)
P=[P1 P2 P3];
Slope1=(E(2,1)-P1(2,1))/(E(1,1)-P1(1,1));
Slope2=(E(2,1)-P2(2,1))/(E(1,1)-P2(1,1));
Slope3=(E(2,1)-P3(2,1))/(E(1,1)-P3(1,1));
if Slope1==Slope2
    line_p(1)=P1(1,1);
    line_p(2)=P1(2,1);
    line_p(3)=P2(1,1);
    line_p(4)=P2(2,1);
    point(1)=P3(1,1);
    point(2)=P3(2,1);
    proj_point3=ProjPoint(point,line_p);
    xx=2/sqrt((1/Slope1)^2+1);
    yy=xx*(1/Slope1);
    delx=proj_point3(1,1)-P3(1,1);
    dely=proj_point3(2,1)-P3(2,1);
    Enext(1,1)=E(1,1)+(delx/abs(delx))*xx;
    Enext(2,1)=E(2,1)+(dely/abs(dely))*yy;
elseif Slope1==Slope3
    line_p(1)=P1(1,1);
    line_p(2)=P1(2,1);
    line_p(3)=P3(1,1);
    line_p(4)=P3(2,1);
    point(1)=P2(1,1);
    point(2)=P2(2,1);
    proj_point2=ProjPoint(point,line_p);
    xx=2/sqrt((1/Slope1)^2+1);
    yy=xx*(1/Slope1);
    delx=proj_point2(1,1)-P2(1,1);
    dely=proj_point2(2,1)-P2(2,1);
    Enext(1,1)=E(1,1)+(delx/abs(delx))*xx;
    Enext(2,1)=E(2,1)+(dely/abs(dely))*yy;
elseif Slope2==Slope3
    line_p(1)=P2(1,1);
    line_p(2)=P2(2,1);
    line_p(3)=P3(1,1);
    line_p(4)=P3(2,1);
    point(1)=P1(1,1);
    point(2)=P1(2,1);
    proj_point1=ProjPoint(point,line_p);
    xx=2/sqrt((1/Slope2)^2+1);
    yy=xx*(1/Slope2);
    delx=proj_point1(1,1)-P1(1,1);
    dely=proj_point1(2,1)-P1(2,1);
    Enext(1,1)=E(1,1)+(delx/abs(delx))*xx;
    Enext(2,1)=E(2,1)+(dely/abs(dely))*yy;   
end
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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
