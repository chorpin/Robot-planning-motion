function [Center]=CenterApollonius(Pursuer,Evader)
%assume w=Vp:Ve=sqrt(3):2
w=sqrt(3)/2;
Center(1,1)=(Pursuer(1,1)-Evader(1,1)*(w^2))/(1-(w^2));
Center(2,1)=(Pursuer(2,1)-Evader(2,1)*(w^2))/(1-(w^2));

