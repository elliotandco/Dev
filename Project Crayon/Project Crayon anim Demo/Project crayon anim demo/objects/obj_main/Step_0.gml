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




if(move_up & !up_right & !up_left){up = 1;}else{up = 0;}
if(move_down & !down_right & !down_left){down = 1;}else{down = 0;}
if(move_left & !up_left & !down_left){left = 1;}else{left = 0;}
if(move_right >!up_right & down_right){right = 1;}else{right = 0;}





if(abs(hspd>0) & abs(vspd>0)){
	if(move_dash)
	{sprite_index=sprite_dr_dash}
	} else {sprite_index=sprite_dr}
		


if(move_down & move_right = 1)
	{down_right = 1;}else{down_right = 0;}
	
if(move_down & move_left)
	{down_left = 1;}else{down_left = 0;}	
		
if(move_left & move_up)
	{up_left =1;}else{up_left = 0;}
	
if(move_up & move_right)
	{up_right = 1;}else{up_right = 0;}



/*
if(move_right > 0)
	{right = 1;}else{right = 0;}
	
if(move_left > 0)
	{left = 1;}else{left = 0;}
	
if(move_up > 0)
	{up = 1;}else{up = 0;}
	
if(move_down > 0)
	{down = 1;}else{down = 0;}
*/

/*	
if(move_right > 0){right = 1;}else if(up = 1){right = 0;}else if(down = 1){right = 0;}
if(move_left > 0){left = 1;}else if(up = 1){left = 0;}else if(down = 1){left = 0;}		
if(move_up > 0){up = 1;}else if(right = 1){up = 0;}else if(left = 1){up = 0;}
if(move_down > 0){down = 1;}else if(right = 1){down = 0;}else if(left = 1){down = 0;}


if(left = 1 & up = 1)
	{up_left = 1;}else{up_left = 0;}
	

if(right > 0 && down > 0)
	{down_right = 1;}else{down_right = 0;}
	
if(down > 0 && left > 0)
	{down_left = 1;}else{down_left = 0;}	
		
if(up > 0 && left > 0)
	{up_left =1;}else{up_left = 0;}
	
if(up > 0 && move_right > 0)
	{up_right = 1;}else{up_right = 0;}

*/

if(abs(hspd>0) && abs(vspd>0 && move_dash))
	{sprite_index=sprite_dr_dash}
	
if(abs(hspd<0) & abs(vspd<0 && move_dash))
	{sprite_index=sprite_ul_dash}

if(abs(hspd<0) & abs(vspd>0 && move_dash))
	{sprite_index=sprite_dl_dash
	alarm_set(0, 1)}
	
if(abs(hspd>0) & abs(vspd<0 && move_dash))
	{sprite_index=sprite_ur_dash}
	
if(abs(hspd)<abs(vspd) && move_dash){
	if(vspd<0){sprite_index=sprite_u_dash}
	if(vspd>0){sprite_index=sprite_d_dash}
}

if(abs(hspd)>abs(vspd) && move_dash){
	if(hspd<0){sprite_index=sprite_l_dash}
	if(hspd>0){sprite_index=sprite_r_dash}
}
	

if(down_right = 1) {
	sprite_index = sprite_idle;
	image_index = 0;
	if(image_index > 16) {
		image_index = 0;
	}
}

if(right = 1) {
	sprite_index = sprite_idle;
	image_index = 17;
	if(image_index > 32) {
		image_index = 17;
	}
}

if(up_right = 1) {
	sprite_index = sprite_idle;
	image_index = 33;
	if(image_index > 48) {
		image_index = 33;
	}
}
if(up = 1) {
	sprite_index = sprite_idle;
	image_index = 49;
	if(image_index > 64) {
		image_index = 49;
	}
}

if(up_left = 1) {
	sprite_index = sprite_idle;
	image_index = 65;
	if(image_index > 80) {
		image_index = 65;
	}
}

if(left = 1) {
	sprite_index = sprite_idle;
	image_index = 81;
	if(image_index > 96) {
		image_index = 81;
	}
}

if(down_left = 1) {
	sprite_index = sprite_idle;
	image_index = 97;
	if(image_index > 112) {
		image_index = 97;
	}
}

if(down = 1) {
	sprite_index = sprite_idle;
	image_index = 113;
	if(image_index > 128) {
		image_index = 113;
	}
}


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