function PEgame
%Test for plotting
 E=CreateRole;
 P1=CreateRole;
 P2=CreateRole;
 P3=CreateRole;
% E=[19;-25];
% P1=[-13;10];
% P2=[28;-34];
% P3=[43;22];
C1=CenterApollonius(P1,E);
C2=CenterApollonius(P2,E);
C3=CenterApollonius(P3,E);
R1=RadiusApollonius(P1,E);
R2=RadiusApollonius(P2,E);
R3=RadiusApollonius(P3,E);
% hold on
% plot(E(1,1),E(2,1),'r*');
% plot(C1(1,1),C1(2,1),'b*');
% plot(C2(1,1),C2(2,1),'b*');
% plot(C3(1,1),C3(2,1),'b*');
% PlotApolonius(R1,C1);
% PlotApolonius(R2,C2);
% PlotApolonius(R3,C3);
%Test for plotting
% Part 1: Evader Evasion strategy, evader is not in the polygon enclosed by
% Pursuers
k=0;%indicator
count=1;
Es=E;
P1s=P1;
P2s=P2;
P3s=P3;
while k==0    
    ENext=EvasionStrategy(Es(:,count),P1s(:,count),P2s(:,count),P3s(:,count));
    Es=[Es ENext];
    Epre=Es(:,count);
    Ecurrent=Es(:,count+1);
    PNext=PursueStrategy(Epre,Ecurrent,P1s(:,count),P2s(:,count),P3s(:,count));
    P1s=[P1s PNext(:,1)];
    P2s=[P2s PNext(:,2)];
    P3s=[P3s PNext(:,3)];
    k=Arrest(Es(:,count+1),P1s(:,count+1),P2s(:,count+1),P3s(:,count+1));
    if count>=2000
        k=1;
    end
    count=count+1;   
end
L=length(Es);
for ii=1:(L-1)
    hold on
    plot([Es(1,ii),Es(1,ii+1)],[Es(2,ii),Es(2,ii+1)],'r'),axis equal;
    plot([P1s(1,ii),P1s(1,ii+1)],[P1s(2,ii),P1s(2,ii+1)],'b'),axis equal;
    plot([P2s(1,ii),P2s(1,ii+1)],[P2s(2,ii),P2s(2,ii+1)],'b'),axis equal;
    plot([P3s(1,ii),P3s(1,ii+1)],[P3s(2,ii),P3s(2,ii+1)],'b'),axis equal;
    %Circle

    C1=CenterApollonius(P1s(:,ii+1),Es(:,ii+1));
    C2=CenterApollonius(P2s(:,ii+1),Es(:,ii+1));
    C3=CenterApollonius(P3s(:,ii+1),Es(:,ii+1));
    R1=RadiusApollonius(P1s(:,ii+1),Es(:,ii+1));
    R2=RadiusApollonius(P2s(:,ii+1),Es(:,ii+1));
    R3=RadiusApollonius(P3s(:,ii+1),Es(:,ii+1));
    PlotApolonius(R1,C1);
    PlotApolonius(R2,C2);
    PlotApolonius(R3,C3);

    %
   
    pause(0.01);
end
    
% plot(Es(1,:),Es(2,:),'r'),axis equal;
% plot(P1s(1,:),P1s(2,:),'b'),axis equal;
% plot(P2s(1,:),P2s(2,:),'b'),axis equal;
% plot(P3s(1,:),P3s(2,:),'b'),axis equal;
count
Es(:,L)
P1s(:,L)
P2s(:,L)
P3s(:,L)
end









