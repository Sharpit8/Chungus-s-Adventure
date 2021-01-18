if instance_exists(o_Bison)
{
if global.turning=o_Bison and o_Bison.states=o_Bison.states.Bison_Idle and global.selection=-1 and o_Bison.stamina>=staminacost and !instance_exists(o_textbox)
{ 

selected=0
global.selection=-2
o_Bison.damage=damage
o_Bison.staminacost=0
o_Bison.stamina=o_Bison.stamina-staminacost
o_Bison.hp=o_Bison.hp+hpgain
o_Bison.taunt=o_Bison.taunt+1
audio_play_sound(so_SelectAttack,0,0)


//with instance_create_layer(o_Bison.x,o_Bison.y,"DamageText",o_HealText)
//	{damage=-other.staminacost}
with instance_create_layer(o_Bison.x,o_Bison.y-80,"DamageText",o_HealText)
	{damage=other.hpgain}
global.turning=-1 global.selection=-1



}
}


