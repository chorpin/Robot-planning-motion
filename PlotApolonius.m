function PlotApolonius(R,Center)
x=Center(1,1)-R;
y=Center(2,1)-R;
rectangle('position',[x,y,2*R,2*R],'Curvature',[1,1]),axis equal;