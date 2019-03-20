function [k]=Arrest(E,P1,P2,P3)
k=0
d1=distance(P1,E);
d2=distance(P2,E);
d3=distance(P3,E);
if (d1<=15)||(d2<=15)||(d3<=15)
    k=1;
end
end