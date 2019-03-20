function [R]=RadiusApollonius(Pursuer,Evader)
%assume w=Vp:Ve=sqrt(3):2
w=sqrt(3):2;
x=Pursuer(1,1)-Evader(1,1);
y=Pursuer(2,1)-Evader(2,1);
R=w*sqrt(x^2+y^2)/abs(1-w^2);