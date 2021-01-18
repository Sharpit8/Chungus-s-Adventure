if instance_exists(o_PrinceChungus)
{
if global.turning=o_PrinceChungus and o_PrinceChungus.states=o_PrinceChungus.states.Chungus_Idle and global.selection=-1 and o_PrinceChungus.stamina>=staminacost and !instance_exists(o_textbox)
{ 

o_PrinceChungus.hpgain=hpgain
o_PrinceChungus.damage=damage
o_PrinceChungus.staminacost=staminacost
audio_play_sound(so_SelectAttack,0,0)

o_PrinceChungus.staminacost=0
o_PrinceChungus.hpgain=0
o_PrinceChungus.stamina=o_PrinceChungus.stamina-staminacost
o_PrinceChungus.hp=o_PrinceChungus.hp+hpgain
with instance_create_layer(o_PrinceChungus.x,o_PrinceChungus.y,"DamageText",o_HealText)
	{damage=-other.staminacost}
with instance_create_layer(o_PrinceChungus.x,o_PrinceChungus.y-80,"DamageText",o_HealText)
	{damage=other.hpgain}
global.turning=-1 global.selection=-1


}
}


