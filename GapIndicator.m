function G=GapIndicator(E,P1,P2,P3)
C1=CenterApollonius(P1,E);
C2=CenterApollonius(P2,E);
C3=CenterApollonius(P3,E);
R1=RadiusApollonius(P1,E);
R2=RadiusApollonius(P2,E);
R3=RadiusApollonius(P3,E);
D3=distance(P1,P2);
D1=distance(P3,P2);
D2=distance(P1,P3);
G=0;
if (D3>(R1+R2))||(D2>(R1+R3))||(D1>(R2+R3))
    G=1;
end
end
