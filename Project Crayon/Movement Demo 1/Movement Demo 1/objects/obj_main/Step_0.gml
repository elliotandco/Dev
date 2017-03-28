//movement

input_get(0);

//friction = 0.5;

//xx,yy prefect collissions



xx = move_right-move_left;
yy = move_down-move_up;

hspd = xx*spd;
vspd = yy*spd;

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


//basic check movement + acceleration


//max speed



// same collion, will it work ?
/*
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

*/

//move animation
if(abs(hspd)<abs(vspd)){
	if(vspd<0){sprite_index=sprite_u}
	if(vspd>0){sprite_index=sprite_d}
}

if(abs(hspd)>abs(vspd)){
	if(hspd<0){sprite_index=sprite_l}
	if(hspd>0){sprite_index=sprite_r}
}


if(abs(hspd>0) & abs(vspd>0))
	{sprite_index=sprite_dr}
		
if(abs(hspd<0) & abs(vspd<0))
	{sprite_index=sprite_ul}
	
if(abs(hspd<0) & abs(vspd>0))
	{sprite_index=sprite_dl}
	
if(abs(hspd>0) & abs(vspd<0))
	{sprite_index=sprite_ur}

	

/*
if(abs(hspd)=abs(vspd)&&abs(vspd)<0){
	if(vspd<0){sprite_index=sprite_ur}
	if(vspd>0){sprite_index=sprite_ul}
}
*/



if(hspd==0&&vspd==0){
	image_speed = 0.666;
	sprite_index=sprite_main;} 
	else {image_speed=ani}
	
	
	//attack animation
	
if (gamepad_button_check(0,gp_shoulderlb)){
	image_speed = 1
	sprite_index=sprite_attack_1
	}