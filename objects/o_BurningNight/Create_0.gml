audio_pause_sound(so_BirdsChirping)

audio_sound_gain(so_Burning,10,0)
audio_play_sound(so_Burning,0,1)

burndelay=30
once=0

msg = [
["''Snore...''","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["Chungus Wakes.","",s_Nonne,so_Type,fo_Bison],
["....Wait whats happening, is there a fire?!","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["The entire village is on fire, the burnt-wood air flows into Chungus's nose.","",s_Nonne,so_Type,fo_Bison],
["Why can't i hear anyone.... Wait who are those people in the distance?","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["Their headed towards the forest, i can't let them escape.","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["THEY must have done this... i have to go after them, they will pay!","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["Chungus Leaps out of his window and sprints towards the shadowed figures, bloodlust in his eyes.","",s_Nonne,so_Type,fo_Bison],
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
}

