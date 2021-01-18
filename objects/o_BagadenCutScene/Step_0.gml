if instance_exists(o_WorldMapPlayer)
{
if distance_to_object(o_WorldMapPlayer)<900 and global.CutScene[1]=0
{global.CutScene[1]=1 global.playermove=0
audio_pause_sound(so_WoodLandSong)
	}

}

if instance_exists(o_WorldMapCamera) and global.CutScene[1]=1
{

if o_WorldMapCamera.XOffSet<600
{o_WorldMapCamera.XOffSet=o_WorldMapCamera.XOffSet+7}

if o_WorldMapCamera.XOffSet>=600
{global.CutScene[1]=2
audio_play_sound(so_BagadenTheme,0,1)
global.CanTextQuit=0
global.CanSkipText=0

msg = [
["What do we have here?","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
["You must be Bagaden.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["Chungus, No-","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["We are coming for you, you could be a sheep because you are going to be slaughtered.","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["Feisty words for a rabbit, I think I like you.","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
["But i'm busy right now so we can't have that can we?","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
["Anyways i'm off.","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
["I'll kill you for what you did!","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["I'll like to see you try.","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
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

if global.CutScene[1]=2 and instance_exists(o_textbox)
{
if o_textbox.messageID = "5"
{global.CutScene[1]=3
	sprite_index=s_Bagaden_SideWalk

speed=7
direction=point_direction(x,y,o_TreeCutScene.x+300,o_TreeCutScene.y)
	
	}
}

if global.CutScene[1]=3 and instance_place(x-200,y+500,o_TreeCutScene)
{
speed=0
global.CutScene[1]=4
sprite_index=s_Bagaden_FrontAxeSwing
image_index=0	
}

if global.CutScene[1]=4 and (floor(image_index)>=16) and sprite_index=s_Bagaden_FrontAxeSwing
{
audio_play_sound(so_Hit,0,0)
global.CutScene[1]=5
with instance_create_layer(o_TreeCutScene.x,o_TreeCutScene.y,"Particules",o_particuleNoCollision)
{spawn=40}
ScreenShake(60,40)
o_TreeCutScene.sprite_index=s_TreeFallDown
	
}

if global.CutScene[1]=6 and o_textbox.messageID = "8"
{
global.CutScene[1]=7
speed=7
direction=point_direction(x,y,x+1000,y+300)
sprite_index=s_Bagaden_SideWalk
image_xscale=1

}

if !instance_exists(o_textbox) and global.CutScene[1]=7
{
global.CutScene[1]=8
audio_pause_sound(so_BagadenTheme)
audio_resume_sound(so_WoodLandSong)
global.CanTextQuit=1
global.playermove=1
global.CanSkipText=1

}


if o_WorldMapCamera.XOffSet!=0 and once=0 and global.CutScene[1]=8
{o_WorldMapCamera.XOffSet=o_WorldMapCamera.XOffSet-7}

if o_WorldMapCamera.XOffSet=0 and once=0 and global.CutScene[1]=8
{once=1 global.YClamp=0}