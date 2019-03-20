function [role]=CreateRole
role(1,1)=random('unif',-60,60);
role(2,1)=random('unif',-30,30);
role(1,1)=round(role(1,1));
role(2,1)=round(role(2,1));