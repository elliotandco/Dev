///input_get(device);
dvc = argument0;

move_up = keyboard_check(vk_up);
move_down = keyboard_check(vk_down);
move_left = keyboard_check(vk_left);
move_right = keyboard_check(vk_right);

if(gamepad_is_connected(dvc)){
	move_up = gamepad_axis_value(dvc, gp_axislv)<-0.3;
	move_down = gamepad_axis_value(dvc, gp_axislv)>0.3;
	move_left = gamepad_axis_value(dvc, gp_axislh)<-0.3;
	move_right = gamepad_axis_value(dvc, gp_axislh)>0.3;
}