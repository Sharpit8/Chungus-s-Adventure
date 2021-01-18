if instance_exists(o_Bison)
{
if global.turning=o_Bison
{visible=1}
else
{visible=0}




}





if global.selection!=-2 and global.selection!=-1 and o_Bison.states=o_Bison.states.Bison_Idle and global.turning=o_Bison and selected=1
{
o_Bison.staminacost=0
o_Bison.stamina=o_Bison.stamina-staminacost
o_Bison.states=o_Bison.states.Bison_BasicAttack 
selected=0
}

if mouse_check_button_pressed(mb_right) and global.selection=-2
{
selected=0
global.selection=-1
o_Bison.staminacost=0
audio_play_sound(so_CancelAttack,0,0)
}

if hoveronce=0 and (position_meeting(mouse_x, mouse_y, id)) and global.selection=-1 and o_Bison.states=o_Bison.states.Bison_Idle
{audio_play_sound(so_HoverAttack,0,0) hoveronce=1}

if !(position_meeting(mouse_x, mouse_y, id))
{hoveronce=0}