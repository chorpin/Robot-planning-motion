rosshutdown
master_ip = 'burobotics';
rosinit(master_ip)

%Create waypoint publishers
create(6).publisher = rospublisher('/create5/waypoint','geometry_msgs/Pose');
create(5).publisher = rospublisher('/create4/waypoint','geometry_msgs/Pose');
create(4).publisher = rospublisher('/create3/waypoint','geometry_msgs/Pose');
create(3).publisher = rospublisher('/create2/waypoint','geometry_msgs/Pose');
create(2).publisher = rospublisher('/create1/waypoint','geometry_msgs/Pose');
create(1).publisher = rospublisher('/create0/waypoint','geometry_msgs/Pose');



create(6).waypoint = rosmessage('geometry_msgs/Pose');
create(5).waypoint = rosmessage('geometry_msgs/Pose');
create(4).waypoint = rosmessage('geometry_msgs/Pose');
create(3).waypoint = rosmessage('geometry_msgs/Pose');
create(2).waypoint = rosmessage('geometry_msgs/Pose');
create(1).waypoint = rosmessage('geometry_msgs/Pose');

create(6).waypoint.Position.X = -1;
create(6).waypoint.Position.Y = -6;
create(5).waypoint.Position.X = -1;
create(5).waypoint.Position.Y = -5;
create(4).waypoint.Position.X = -1;
create(4).waypoint.Position.Y = -4;
create(3).waypoint.Position.X = -1;
create(3).waypoint.Position.Y = -3;
create(2).waypoint.Position.X = -1;
create(2).waypoint.Position.Y = -2;
create(1).waypoint.Position.X = -1;
create(1).waypoint.Position.Y = -1;


%create(6).pose = receive(create(6).subscriber,10);

send(create(6).publisher,create(6).waypoint);
send(create(5).publisher,create(5).waypoint);
send(create(4).publisher,create(4).waypoint);
send(create(3).publisher,create(3).waypoint);
send(create(2).publisher,create(2).waypoint);
send(create(1).publisher,create(1).waypoint);
%at_waypoint = 0;
%boundsX = .01;
%boundsY = .01;
%while at_waypoint == 0
%    create(6).pose = recieve(create(6).subscriber,10);
    
%    if create.pose.Pose.Position.X == create(6).waypoint.Position.X
%       at_waypoint == 1; 
%    end
    
%end
%set new waypoint
pause(10000)
%rosshutdown