/// @description initial logic for movement, jumping etc.

// get player input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// check if movement will be left or right 
var move = key_right - key_left;

// set speed based on left or right
hsp = move * walksp;
vsp = vsp + grv;

// conditions for jumping
if(place_meeting(x,y+1, oWall)) and (key_jump){
	vsp = -7
}

// collision horizontal
if (place_meeting(x+hsp, y, oWall)){
	while(!place_meeting(x+sign(hsp), y, oWall)){
		x = x + sign(hsp);
	}
	hsp = 0
}

x = x + hsp;

// collision vertical
if (place_meeting(x, y +vsp, oWall)){
	while(!place_meeting(x, y+sign(vsp), oWall)){
		y = y + sign(vsp);
	}
	vsp = 0
}

y = y + vsp;





