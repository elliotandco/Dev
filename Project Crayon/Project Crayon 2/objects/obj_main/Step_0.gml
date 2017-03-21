/// @description Insert description here
// You can write your code in this editor

move_up = keyboard_check(vk_up);
move_down = keyboard_check(vk_down);
move_left = keyboard_check(vk_left);
move_right = keyboard_check(vk_right);


xx = move_right-move_left;
yy = move_down-move_up;

hspd = xx*spd;
vspd = yy*spd;

/*
if (hspd > 0) {
	friction= 0.25;
} else {
	friction = 0;
}

if (vspd > 0) {
	friction=0.0025;
} else {
	friction = 0;
}

*/

if(place_meeting(x+hspd,y,obj_wall)) {
	while(!place_meeting(x+sign(hspd),y,obj_wall)){
		x+=sign(hspd);
		}
	hspd = 0;
}
x += hspd;

if(place_meeting(x,y+vspd,obj_wall)) {
	while(!place_meeting(x,y+sign(vspd),obj_wall)){
		y+=sign(vspd);
		}
	vspd = 0;
}
y += vspd;