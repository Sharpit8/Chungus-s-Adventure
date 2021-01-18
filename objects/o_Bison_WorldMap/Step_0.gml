if instance_exists(o_WorldMapPlayer)
{

if !instance_place(x,y,o_WorldMapPlayer)
{direction=point_direction(x,y,o_WorldMapPlayer.x,o_WorldMapPlayer.y)
speed=8
sprite_index=s_Bison_Walk}

if instance_place(x,y,o_WorldMapPlayer)
{direction=point_direction(x,y,o_WorldMapPlayer.x,o_WorldMapPlayer.y)
speed=0
sprite_index=s_Bison_Idle}

if o_WorldMapPlayer.x>x
{image_xscale=1}

if o_WorldMapPlayer.x<x
{image_xscale=-1}





}




if (floor(image_index)>=17) and steponce=0 and sprite_index=s_Bison_Walk
{steponce=1 audio_play_sound_on(myEmitter,footstepsound1,0,0)}

if (floor(image_index)>=34) and steponce1=0 and sprite_index=s_Bison_Walk
{steponce1=1 audio_play_sound_on(myEmitter,footstepsound2,0,1)}


if (!instance_exists(o_textbox)) and talkoncestart=0
{talkoncestart=1
	
	var _tb = instance_create_layer(0,0,"TextBox",o_textbox)
	
	var _list = _tb.messages
	for (var i=0; i<array_length_1d(msg); i++) {
		var _arr = msg[i];
		
		ds_list_add(_list,_arr);
	}
	
if instance_exists(_tb)
{with _tb
{voicesound = other.voicesound 
voiceinterval = 3}}

}