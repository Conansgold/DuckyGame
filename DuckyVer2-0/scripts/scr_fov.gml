///scr_fov(dir,deg,dist,x,y)
//argument0 direction the checking object is facing
//argument1 the field of view in degrees
//argument2 maximum distance
//argument3 the x of to be seen
//argument4 the y of to be seen
 
Dir1=point_direction(x,y,argument3,argument4);
FOV2=argument1/2;
_x1=x+lengthdir_x(50,argument0);
_y1=y+lengthdir_y(50,argument0);
_x2=x+lengthdir_x(50,argument0+FOV2);
_y2=y+lengthdir_y(50,argument0+FOV2);
_x3=x+lengthdir_x(50,Dir1);
_y3=y+lengthdir_y(50,Dir1);
dist1=point_distance(_x1,_y1,_x2,_y2);
dist2=point_distance(_x1,_y1,_x3,_y3);
distObj=point_distance(x,y,argument3,argument4);
return (dist1>=dist2)*(distObj<=argument2 or argument2==0);
