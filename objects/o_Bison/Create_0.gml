sc_CreatureCreate()

maxhp=30
hp=maxhp
turnspeed=10
attackmult=1
spattackmult=1
turn=1
turnnow=0
startx=x
starty=y
once=0
once2=0
once3=0
word="Missed"
team=1
blocktimermax=70
blocktimer=blocktimermax
flash=0
staminamax=60
stamina=0
me=o_Bison
damage=10
staminacost=0
msg=0
voicesound=so_BisonVoice
hpgain=0
hpgaintimermax=2
hpgaintimer=hpgaintimermax
draweffectsgap=70
dead=0


states=states.Bison_Idle

movegap=274

instance_create_layer(137,997,"moves",ds_list_find_value(global.BisonMoves,0)) 
instance_create_layer(137+movegap,997,"moves",ds_list_find_value(global.BisonMoves,1)) 
instance_create_layer(137+movegap*2,997,"moves",ds_list_find_value(global.BisonMoves,2)) 
instance_create_layer(137+movegap*3,997,"moves",ds_list_find_value(global.BisonMoves,3)) 
instance_create_layer(137+movegap*4,997,"moves",ds_list_find_value(global.BisonMoves,4)) 
instance_create_layer(137+movegap*5,997,"moves",ds_list_find_value(global.BisonMoves,5)) 
instance_create_layer(137+movegap*6,997,"moves",ds_list_find_value(global.BisonMoves,6)) 