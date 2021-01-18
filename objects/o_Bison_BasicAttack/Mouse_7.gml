if instance_exists(o_Bison)
{
if global.turning=o_Bison and o_Bison.states=o_Bison.states.Bison_Idle and global.selection=-1 and o_Bison.stamina>=staminacost and !instance_exists(o_textbox)
{ 

selected=1
global.selection=-2
o_Bison.damage=damage
o_Bison.staminacost=staminacost
audio_play_sound(so_SelectAttack,0,0)



}
}


