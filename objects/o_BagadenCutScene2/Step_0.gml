if instance_exists(o_WorldMapPlayer)
{
if distance_to_object(o_WorldMapPlayer)<900 and global.CutScene[2]=0
{global.CutScene[2]=1 global.playermove=0
audio_pause_sound(so_WoodLandSong)
	}

}

if instance_exists(o_WorldMapCamera) and global.CutScene[2]=1
{

if o_WorldMapCamera.XOffSet<600
{o_WorldMapCamera.XOffSet=o_WorldMapCamera.XOffSet+7}

if o_WorldMapCamera.XOffSet>=600
{global.CutScene[2]=2
audio_play_sound(so_BagadenTheme,0,1)
global.CanTextQuit=0
global.CanSkipText=0

msg = [
["Bagaden we have come to kill you!","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["Man you guys are more than a pain than i thought.","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
["I heard you killed half my troops, I guess i underestimated you.","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
["Anyways, this works more in our favour; we could use two more strong troops like them.","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
["How would you guys like to join us?","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
["I would never join you! I am disgusted by the thought.","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["I'm honor by your determination, but your still fools.","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
["Apprehend them!","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
]
	
if instance_exists(o_textbox)
{
with o_textbox
{instance_destroy()}
}

if (!instance_exists(o_textbox))
{
	
	var _tb = instance_create_layer(0,0,"TextBox",o_textbox)
	
	var _list = _tb.messages
	for (var i=0; i<array_length_1d(msg); i++) {
		var _arr = msg[i];
		
		ds_list_add(_list,_arr);
	}
	
if instance_exists(_tb)
{with _tb
{voicesound = so_ChungusVoice
voiceinterval = 3}}
}

	
	
}
}

if global.CutScene[2]=2 and instance_exists(o_textbox)
{
if o_textbox.messageID = "7"
{global.CutScene[2]=3

o_AxeMan_CutScene2.speed=7
o_AxeMan_CutScene2.sprite_index=s_AxeMan_walk
o_AxeMan_CutScene2.direction=point_direction(o_AxeMan_CutScene2.x,o_AxeMan_CutScene2.y,o_WorldMapPlayer.x,o_WorldMapPlayer.y)

o_HachetMan_CutScene2.speed=7
o_HachetMan_CutScene2.sprite_index=s_HachetMan_Walk
o_HachetMan_CutScene2.direction=point_direction(o_HachetMan_CutScene2.x,o_HachetMan_CutScene2.y,o_WorldMapPlayer.x,o_WorldMapPlayer.y)

	
}
}

audio_emitter_position(myEmitter,x,y,0)

if instance_exists(o_WorldMapPlayer)
{

if distance_to_object(o_WorldMapPlayer)<=700 and global.CutScene[2]=3
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