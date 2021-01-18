
audio_emitter_position(myEmitter,x,y,0)

audio_listener_position(x,y,0)
audio_emitter_position(global.mainEmitter,x,y,0)

global.playerx=x
global.playery=y



if global.playermove=1
{var pressed_up = keyboard_check(key_up) || keyboard_check(key_up_alt)
var pressed_down = keyboard_check(key_down) || keyboard_check(key_down_alt)
var pressed_left = keyboard_check(key_left) || keyboard_check(key_left_alt)
var pressed_right = keyboard_check(key_right) || keyboard_check(key_right_alt)}

if global.playermove=0
{var pressed_up = 0
var pressed_down = 0
var pressed_left = 0
var pressed_right = 0}

var axis_x_dir = pressed_right - pressed_left
var axis_y_dir = pressed_down - pressed_up

if axis_x_dir = 0 and axis_y_dir = 0
{sprite_index=s_Chungus_Idle}
else
{sprite_index=s_Chungus_Walk}

if axis_x_dir = 1
{image_xscale=1 }

if axis_x_dir = -1
{image_xscale=-1 }






var axis_x_add = axis_x_dir * axis_x_acceleration
var axis_y_add = axis_y_dir * axis_y_acceleration


var axis_x_sub = min(axis_x_reasitution,abs(axis_x)) * sign(axis_x) * (axis_x_dir == 0)
var axis_y_sub = min(axis_y_reasitution,abs(axis_y)) * sign(axis_y) * (axis_y_dir == 0)

axis_x = clamp(axis_x + axis_x_add - axis_x_sub,-axis_x_max,axis_x_max)
axis_y = clamp(axis_y + axis_y_add - axis_y_sub,-axis_y_max,axis_y_max)

if !(axis_x == 0 and axis_y == 0)
{


 var dist = sqrt(sqrt(abs(axis_x)) + sqrt(abs(axis_y)))
 var mdist = min(movement_speed, dist)
 axis_x = (axis_x / dist) * mdist
 axis_y = (axis_y / dist) * mdist
 
if !place_meeting(x + axis_x,y + axis_y,Parent_Wall)
{x += axis_x 
y += axis_y}
else
{
	for(var i = 0; i < abs(axis_x); i++)
	{
		if place_meeting(x + sign(axis_x),y,Parent_Wall) then break;
		x += sign(axis_x);
	}
	
	for(var i = 0; i < abs(axis_y); i++)
	{
		if place_meeting(x,y + sign(axis_y),Parent_Wall) then break;
		y += sign(axis_y);
	}
}
 
}

if (floor(image_index)>=16) and steponce=0 and sprite_index=s_Chungus_Walk
{steponce=1 audio_play_sound_on(myEmitter,footstepsound1,0,0)}

if (floor(image_index)>=34) and steponce1=0 and sprite_index=s_Chungus_Walk
{steponce1=1 audio_play_sound_on(myEmitter,footstepsound2,0,1)}

if room=r_StartForest and x<=0 and !instance_exists(o_RoomOutBlack)
{
	global.roomgoto=r_BurningNight

instance_create_layer(x,y,"RoomTransistion",o_RoomOutBlack)
}




intimer=intimer-1
if global.InWorld1once=0 and !instance_exists(o_textbox) and intimer<=0 and room=r_WorldMap1
{global.InWorld1once=1 global.playermove=1 game_save("file1.dat")}

if global.roomrestart=1
{global.roomrestart=0  room_restart() 
if instance_exists(o_textbox)
{
with o_textbox
{instance_destroy()}
}}


//if instance_exists(o_textbox)
//{
//if o_textbox.messageID = "0"
//{audio_play_sound(so_Hit,0,0)}
//}