audio_emitter_position(myEmitter,x,y,0)

if instance_exists(o_WorldMapPlayer)
{

if distance_to_object(o_WorldMapPlayer)<=700
{
	
direction=point_direction(x,y,o_WorldMapPlayer.x,o_WorldMapPlayer.y)
speed=9
sprite_index=Sprite_Walk

if o_WorldMapPlayer.x>x
{image_xscale=1}

if o_WorldMapPlayer.x<x
{image_xscale=-1}
	
}

if distance_to_object(o_WorldMapPlayer)>700
{
	
direction=point_direction(x,y,o_WorldMapPlayer.x,o_WorldMapPlayer.y)
speed=0
sprite_index=Sprite_Idle
	
}




}


if (floor(image_index)>=14) and steponce=0 and sprite_index=Sprite_Walk
{steponce=1 audio_play_sound_on(myEmitter,footstepsound1,0,0)}

if (floor(image_index)>=28) and steponce1=0 and sprite_index=Sprite_Walk
{steponce1=1 audio_play_sound_on(myEmitter,footstepsound2,0,1)}

if found=1
{speed=0 sprite_index=Sprite_Idle}