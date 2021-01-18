if instance_exists(o_PrinceChungus)
{
if global.turning=o_PrinceChungus and o_PrinceChungus.states=o_PrinceChungus.states.Chungus_Idle and global.selection=-1 and o_PrinceChungus.stamina>=staminacost and !instance_exists(o_textbox)
{ 
selected=1
global.selection=-2
o_PrinceChungus.damage=damage
o_PrinceChungus.staminacost=staminacost
audio_play_sound(so_SelectAttack,0,0)



}
}


