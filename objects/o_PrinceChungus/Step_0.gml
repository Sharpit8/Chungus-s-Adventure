switch (states)
{
	case states.Chungus_Idle: sc_Chungus_Idle(); break;
	case states.Chungus_BasicAttack: sc_Chungus_BasicAttack(); break;
	case states.Chungus_Return: sc_Chungus_Return(); break;
	case states.Chungus_HaymakerSlashes: sc_Chungus_HaymakerSlashes(); break;
}

if stamina>staminamax
{stamina=staminamax}

if stamina<0
{stamina=0}



blocktimer=blocktimer-1

sc_CreatureStep()



if global.turning=-1 and ds_list_find_value(global.turnorder,global.turnturn) = o_PrinceChungus and !instance_exists(o_textbox) and !instance_exists(o_RoomIn)
{stamina=stamina+10 global.turnturn=global.turnturn + 1 turnnow=1 turn=0 global.turning=o_PrinceChungus
	sc_ChungusTextLines()
	with instance_create_layer(x,y,"DamageText",o_HealText)
	{damage=10}
	
	}





if hp>maxhp
{hp=maxhp}


hpgaintimer=hpgaintimer-1
if hpgaintimer<=0
{hpgain=0}

if hp<=0
{ds_list_delete(global.turnorder,ds_list_find_index(global.turnorder,me))}

if instance_exists(o_Bison)
{
if hp<=0 and o_Bison.hp<=0
{game_load("file1.dat") global.roomrestart=1 audio_pause_sound(so_WoodLandBattleSong)
audio_pause_sound(so_BagadenBattleTheme)	audio_pause_sound(so_BagadenTheme) audio_resume_sound(so_WoodLandSong)


}
}


