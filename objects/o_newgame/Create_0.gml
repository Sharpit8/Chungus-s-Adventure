
enum states
{   //PrinceChungus
	Chungus_Idle,
	Chungus_BasicAttack,
	Chungus_Return,
	Chungus_HaymakerSlashes,
	//Bison
	Bison_Idle,
	Bison_BasicAttack,
	Bison_Return,
	//AxeMan
	AxeMan_Idle,
	AxeMan_BasicAttack,
	AxeMan_Return,
	AxeMan_Charge,
		//AxeMan
	HachetMan_Idle,
	HachetMan_HachetAttack,
	HachetMan_Return,
	HachetMan_DoubleHachetAttack,
			//Bagaden
	Bagaden_Idle,
	Bagaden_BasicAttack,
	Bagaden_Return,
	Bagaden_AxeSpike,
	Bagaden_AxeJump,

	

}

randomize()


global.InWorld1once=0
global.playerx=400
global.playery=800
global.AxeManLevel1=0
global.AxeManLevel2=0
global.AxeManLevel3=0
global.roomgoto=1
global.playermove=1
global.roomrestart=0
global.CutScene[1]=0
global.CutScene[2]=0
global.CanTextQuit=1
global.CanSkipText=1
global.YClamp=1080/2
global.saveonce[0]=0
global.saveonce[1]=0
global.saveonce[2]=0

global.ChungusMoves=ds_list_create()
ds_list_add(global.ChungusMoves,o_Chungus_BasicAttack)
ds_list_add(global.ChungusMoves,o_Chungus_Rest)
ds_list_add(global.ChungusMoves,o_Chungus_HaymakerSlashes)
ds_list_add(global.ChungusMoves,o_noone)
ds_list_add(global.ChungusMoves,o_noone)
ds_list_add(global.ChungusMoves,o_noone)
ds_list_add(global.ChungusMoves,o_noone)

global.BisonMoves=ds_list_create()
ds_list_add(global.BisonMoves,o_Bison_BasicAttack)
ds_list_add(global.BisonMoves,o_Bison_Guard)
ds_list_add(global.BisonMoves,o_noone)
ds_list_add(global.BisonMoves,o_noone)
ds_list_add(global.BisonMoves,o_noone)
ds_list_add(global.BisonMoves,o_noone)
ds_list_add(global.BisonMoves,o_noone)

room_goto_next()
