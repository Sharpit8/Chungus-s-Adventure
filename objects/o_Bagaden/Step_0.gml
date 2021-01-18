


switch (states)
{
	case states.Bagaden_Idle: sc_Bagaden_Idle(); break;
	case states.Bagaden_BasicAttack: sc_Bagaden_BasicAttack(); break;
	case states.Bagaden_Return: sc_Bagaden_Return(); break;
	case states.Bagaden_AxeSpike: sc_Bagaden_AxeSpike(); break;
	case states.Bagaden_AxeJump: sc_Bagaden_AxeJump(); break;
}


sc_CreatureStep()
	
if global.turning=-1 and ds_list_find_value(global.turnorder,global.turnturn) = me and !instance_exists(o_textbox) and deadonce=0
{global.turnturn=global.turnturn + 1 turnnow=1 turn=0 global.turning=me 
var random_ = irandom_range(1,3)

if global.turnround<6
{if random_<=2
{states=states.Bagaden_BasicAttack}

if random_=3
{states=states.Bagaden_AxeSpike}}

if global.turnround>=6
{
	
if random_=1
{states=states.Bagaden_AxeJump}

if random_=2
{states=states.Bagaden_BasicAttack}

if random_=3
{states=states.Bagaden_AxeSpike}}

}


if hoveronce=0 and (position_meeting(mouse_x, mouse_y, id)) and global.selection=-2 and hp>0
{audio_play_sound(so_HoverAttack,0,0) hoveronce=1}

if !(position_meeting(mouse_x, mouse_y, id))
{hoveronce=0}

if hp<=0 and room=r_AxeManLevel2
{ds_list_delete(global.turnorder,ds_list_find_index(global.turnorder,me))
	
global.AxeManLevel2=1
global.roomgoto=r_WorldMap1

instance_create_layer(x,y,"RoomTransistion",o_RoomOut)
	
	}
	
	if hp<=0 and room=r_AxeManLevel3
{ds_list_delete(global.turnorder,ds_list_find_index(global.turnorder,me))}


if instance_exists(o_textbox) and global.turnround=5
{audio_pause_sound(so_BagadenTheme)}

if !instance_exists(o_textbox)
{
	
if global.turnround=5 and global.turning=o_PrinceChungus and !instance_exists(o_BagadenAnCut) and makeaniamtiononce=0
{makeaniamtiononce=1
audio_pause_sound(so_BagadenTheme)
instance_create_layer(o_camera.x,o_camera.y,"RoomTransistion",o_BagadenAnCut)}
}

if makeaniamtiononce=1 and !instance_exists(o_BagadenAnCut)
{makeaniamtiononce=2 
o_Bison.hp=0 o_Bison.dead=1 

hp=hp+40
image_speed=1.2

if hp>=maxhp
{hp=maxhp}
with instance_create_layer(x,y-80,"DamageText",o_HealText)
{damage=40}

msg = [
["So MUCH BLOOD, I'm in the mood to kill you now!","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
["...","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["you. you... you TOOK EVERYTHING FROM ME!","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["It wouldn't have turned out this way if you left me alone.","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
["I'M GOING TO KILL YOU!","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["PEPARE TO DIE!","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
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
	
if instance_exists(o_textbox)
{if makeaniamtiononce=2 and o_textbox.messageID = "5"
{makeaniamtiononce=3 audio_play_sound(so_BagadenBattleTheme,0,1)}}

if hp<=0 and global.turning=o_PrinceChungus and deadonce=0
{
	deadonce=1
	audio_pause_sound(so_BagadenBattleTheme)
	audio_play_sound(so_BirdsChirping,0,1)
msg = [
["Enough!","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
["No, i'm not going to stop until i avenge MY VILLAGE!","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["What village?...","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
["The village you SHOWED NO MERCY FOR, you burned it to the ground... that was my village.... my parents, my family lived there...","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["I never burned down any villages...","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
["Why are you assembling an army then?","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["I want to destroy the capital...","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
["I was assembling troops to destroy the capital.","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
["The capital, they must have done this! The capital must have destroyed your village looking for me.","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
["....","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["...I have lost so much....","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["It's all the capital fault for this misunderstanding! The CAPITAL DESTROYED YOUR VILLAGE AND KILLED BISON.","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
["The capital... what have i done....","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["Chungus i'm willing to help you destroy the capital for all they done to you!","Bagaden",s_Bagaden_FrontIdle,so_BagadenVoice,fo_Bagaden],
["Yes, the capital.... IT MUST FALL.","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["I'LL KILL THEM FOR WHAT THEY DID TO BISON.","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["''Bagaden Smiles''","",s_Nonne,so_Type,fo_Bison],
["The END... To be contiuned.","",s_Nonne,so_Type,fo_Bison],
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



