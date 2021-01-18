blocktime=0
if other.blocktimer>0 and attackway="normal"
{blocktime=(other.blocktimer/other.blocktimermax)
	other.image_speed=1}

if blocktime != 0
{damage=damage-((damage*blocktime)/3)
	


audio_sound_pitch(so_Parry, (blocktime*1.2))
audio_sound_gain(so_Parry, blocktime*1.2, 0)
audio_play_sound(so_Parry,0,0)
//audio_sound_gain(so_Parry, 1, 0)

audio_sound_gain(so_BluntParry, blocktime*1.4, 0)
audio_play_sound(so_BluntParry,0,0)
//audio_sound_gain(so_BluntParry, 1, 0)

if blocktime>=0.91
{damage=0
audio_sound_pitch(so_Parry, (blocktime*1.3))
audio_sound_gain(so_Parry, blocktime*1.3, 0)
audio_play_sound(so_Parry,0,0)
audio_play_sound(so_Parry,0,0)
audio_play_sound(so_Parry,0,0)

with instance_create_layer(other.x-(80*team),other.y-320,"Particules",o_particule)
{spawn=40}
}

with instance_create_layer(other.x-(80*team),other.y-320,"Particules",o_particule)
{spawn=20}
	
	}

if attackway="normal"
{ScreenShake(50,30)}

if attackway!="normal"
{ScreenShake(80,30)}

if instance_exists(o_PrinceChungus)
{
if attackway="thrust" and other.me=o_PrinceChungus and other.sprite_index!=s_Chungus_Duck or (floor(other.image_index)>4) and attackway="thrust" and other.me=o_PrinceChungus and other.sprite_index=s_Chungus_Duck
{audio_sound_gain(so_Hit, 1.2, 0)
audio_play_sound(so_Hit,0,0)}

if attackway="thrust" and other.me=o_PrinceChungus and other.sprite_index=s_Chungus_Duck and (floor(other.image_index)<=4)
{damage=0 audio_play_sound(so_HoverAttack,0,0) other.flash=0}

//if other.me = o_PrinceChungus
//{other.stamina=other.stamina - damage div 1}
}

if instance_exists(o_Bison)
{
if attackway="thrust" and other.me=o_Bison and other.sprite_index!=s_Bison_Duck or (floor(other.image_index)>4) and attackway="thrust" and other.me=o_Bison and other.sprite_index=s_Bison_Duck
{audio_sound_gain(so_Hit, 1.2, 0)
audio_play_sound(so_Hit,0,0)}

if attackway="thrust" and other.me=o_Bison and other.sprite_index=s_Bison_Duck and (floor(other.image_index)<=4)
{damage=0 audio_play_sound(so_HoverAttack,0,0) other.flash=0}

//if other.me = o_Bison
//{other.stamina=other.stamina - damage div 1}
}

	
	

if blocktime!=0
{other.flash=1.5-(blocktime*1.5)}
else
{other.flash=1.5}

if blocktime=0 and damage>0
{with instance_create_layer(other.x,other.y-320,"Particules",o_particule)
{spawn=20 sprite_index=s_BloodParticules}}

if damage=0 and attackway="thrust"
{with instance_create_layer(other.x,other.y-320,"Particules",o_particule)
{spawn=20 sprite_index=s_DodgeParticules}}

if blocktime!=0
{with instance_create_layer(other.x,other.y-320,"Particules",o_particule)
{spawn=20-20*other.blocktime sprite_index=s_BloodParticules}}

if blocktime=0 and attackway="normal"
{audio_sound_gain(so_Hit, 1.2, 0)
audio_play_sound(so_Hit,0,0)}

if blocktime!=0 
{audio_sound_gain(so_Hit, 1.2-1*blocktime, 0)
audio_play_sound(so_Hit,0,0)}








other.hp=other.hp-damage div 1

if other.team=1 and attackway="normal"
{other.blocktimer=20}

with instance_create_layer(global.selection.x,global.selection.y,"DamageText",o_DamageText)
{damage=other.damage}



instance_destroy()

