if instance_exists(o_PrinceChungus)
{
if global.turning=o_PrinceChungus
{visible=1}
else
{visible=0}




}










if hoveronce=0 and (position_meeting(mouse_x, mouse_y, id)) and global.selection=-1 and o_PrinceChungus.states=o_PrinceChungus.states.Chungus_Idle
{audio_play_sound(so_HoverAttack,0,0) hoveronce=1}

if !(position_meeting(mouse_x, mouse_y, id))
{hoveronce=0}