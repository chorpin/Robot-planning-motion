function [ agents_world ] = sim_to_real_coor( agents )
%This function remaps the simulation coordinate system into optitrack
%coordinates.

x_offset = 0.44;
y_offset = -1.087;

x_scale = -0.0593;
y_scale = -0.0593;

s = size(agents);

agents_world = agents;

for i = 1:s(2)
    x = agents(1,i);
    y = agents(2,i);
    
    agents_world(1,i) = (x_scale * x) + x_offset; 
    agents_world(2,i) = (y_scale * y) + y_offset;
    
end

end

