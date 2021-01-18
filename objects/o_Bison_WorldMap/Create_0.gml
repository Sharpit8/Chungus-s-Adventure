steponce=0
steponce1=0
footstepsound1=so_Hit
footstepsound2=so_Hit

myEmitter=audio_emitter_create()
audio_falloff_set_model(audio_falloff_linear_distance_clamped)
audio_emitter_falloff(myEmitter,100,1920/2,0.2)

if global.InWorld1once=1
{x=global.playerx-300
y=global.playery}

if global.InWorld1once=0
{x=o_WorldMapPlayer.x-300
y=global.playery}

voicesound = so_BisonVoice
font= fo_Bison

msg = 0


talktimes=array_create(100,0)
talkoncestart=1

if room=r_StartForest
{msg = [
["Hey Chungus, what are you doing out here so late. [Press Space to Continue]","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["Training.","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["Why are you training out here, there's better training equipment in the village.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["I like it out here...","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["Anyways, it's getting pretty late we should head back to the village. [Use WASD to Move]","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["Ya, once we get back i'm going to collapse in my soft bed and sleep untill morning.","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["You never change. [Press ESC to Skip all Text]","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
]

talkoncestart=0


}

if room=r_WorldMap1 and global.InWorld1once=0
{msg = [
["Chungus.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["Chungus, wake up.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["Chungus! WAKE UP!","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["My head hurts, what happen?","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["It looks like you fell and hit your head.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["Wait the village!","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
[".....","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["Is everyone safe?","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["There are no survivors, we are the only ones that escaped.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["Where were you?!? You could have protected them!","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["Father saw you run off and he said that i should go after you.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["By the time i found you and made it back to the village....","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["They were all dead...","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["You shouldn't have gone after me!","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["If i didn't you would be dead.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["I have to go after them, i saw the people that did this to our village; they headed into the forest.","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["Surely, you know that if you go after them alone you stand no chance in hell.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["garrrr... wait, you could help me... with your help we could do it; we could avenge our village.","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["I'm not helping you, it would only put us in more danger.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["I'm going without you or not.","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["I made a promise to father to keep you safe...","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["I guess you leave me no choice.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["That's the spirit!","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
]

if (!instance_exists(o_textbox)) {
	
	var _tb = instance_create_layer(0,0,"TextBox",o_textbox)
	
	var _list = _tb.messages
	for (var i=0; i<array_length_1d(msg); i++) {
		var _arr = msg[i];
		
		ds_list_add(_list,_arr);
	}
	
if instance_exists(_tb)
{with _tb
{voicesound = so_Type
voiceinterval = 3}}
}}