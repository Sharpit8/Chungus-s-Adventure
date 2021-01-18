textdone=0

if talktimes[1]=0 and textdone=0 and room=r_StartForest
{talktimes[1]=talktimes[1]+1 textdone=1
msg = [
["How's everyone in the village?","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["Pretty good, today is just like any other day.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["Someone did say they saw someone strange carrying a axe in the nearby forest.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["Thats why i came to check on you, but i'm sure its nothing.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["You didn't have to check on me, i'm fine by myself.","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
]
}

if talktimes[1]>=1 and textdone=0 and room=r_StartForest
{talktimes[1]=talktimes[1]+1 textdone=1
msg = [
["How's everyone in the village?","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["You already asked that, are you that tired from training.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["Maybe you shouldn't be so hard on yourself.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["I'm fine, i just need a big long rest.","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
]
}

if global.AxeManLevel1=0 and !global.AxeManLevel2=1 and talktimes[0]=0 and textdone=0 and room=r_WorldMap1
{talktimes[0]=talktimes[0]+1 textdone=1
msg = [
["I miss them....","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["I miss them.... so much.","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["Don't worry, we will get those barstards that destroyed our village.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["...","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
]

}

if global.AxeManLevel1=0 and !global.AxeManLevel2=1 and talktimes[0]>=1 and textdone=0 and room=r_WorldMap1
{textdone=1
talktimes[0]=talktimes[0]+1
msg = [
["Are you feeling alright?","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["Never better, especially after...","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["after...","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["You don't have to been sarcastic all the time.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["I almost forgot! Thanks for reminding me!","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["Mr Obvious","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
]
}

if global.AxeManLevel1=1 and !global.AxeManLevel2=1 and talktimes[1]=0 and textdone=0 and room=r_WorldMap1
{talktimes[1]=talktimes[1]+1 textdone=1
msg = [
["Bagaden huh,","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["He seems pretty strong.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["but he'll pay for what he did to our village.","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["Don't get too carried away or you might lose your life.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["like Bagaden would ever defeat me! He's the king of losers.","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
]
}

if global.AxeManLevel1=1 and !global.AxeManLevel2=1 and talktimes[1]>=1 and textdone=0 and room=r_WorldMap1
{talktimes[1]=talktimes[1]+1 textdone=1
msg = [
["I bet ya he's called Bagaden because he's too scared to show his face,","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["so he wares a Bag over his head.","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["Get it Bag---aden","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["Da do, cho","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["Chungus, please don't let your guard down around him; Bagaden is probably the most powerful foe we will face so far.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["And we will be his last.","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
]
}


if global.AxeManLevel2=1 and talktimes[2]=0 and textdone=0 and room=r_WorldMap1
{talktimes[2]=talktimes[2]+1 textdone=1
msg = [
["I have a bad feeling about this.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["We can't turn around now! I won't.","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
]
}

if global.AxeManLevel2=1 and talktimes[2]>=1 and textdone=0 and room=r_WorldMap1
{talktimes[2]=talktimes[2]+1 textdone=2
msg = [
["Chungus we should turn around while we still can, this isn't worth out lives.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["You don't get it, you never got it! You never cared about THEM!","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
["Calm down Chungus, i know it hurts.","Bison",s_Bison_Idle,so_BisonVoice,fo_Bison],
["I don't care what you say, i'm not turning around.","Chungus",s_Chungus_Idle,so_ChungusVoice,fo_Chungus],
]
}

if (!instance_exists(o_textbox)) and msg!=0
{
	
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
msg=0
}