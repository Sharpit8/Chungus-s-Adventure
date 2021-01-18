if (floor(image_index)>=173) and (floor(image_index)<=174)
{
once=1
	
audio_play_sound(so_Hit,0,0)	


with instance_create_depth(x-100,y,depth-1,o_particule)
{spawn=100 sprite_index=s_BloodParticules}

}
	

if once2=0 and (floor(image_index)>=229) 
{
once2=1

audio_play_sound(so_Hit,0,0)
	
with instance_create_depth(x-400,y+400,depth-1,o_particule)
{spawn=100 sprite_index=s_BloodParticules}
	
}

if (floor(image_index)>=300) 
{instance_destroy()
	
}