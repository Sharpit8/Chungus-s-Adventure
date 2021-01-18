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
once4=0
word="Missed"
team=1
blocktimermax=70
blocktimer=blocktimermax
flash=0
staminamax=60
stamina=0
me=o_PrinceChungus
damage=10
staminacost=0
msg=0
voicesound=so_ChungusVoice
hpgain=0
hpgaintimermax=2
hpgaintimer=hpgaintimermax
attacktimes=0
draweffectsgap=200
draweffectsgap=70








states=states.Chungus_Idle

movegap=274

instance_create_layer(137,997,"moves",ds_list_find_value(global.ChungusMoves,0)) 
instance_create_layer(137+movegap,997,"moves",ds_list_find_value(global.ChungusMoves,1)) 
instance_create_layer(137+movegap*2,997,"moves",ds_list_find_value(global.ChungusMoves,2)) 
instance_create_layer(137+movegap*3,997,"moves",ds_list_find_value(global.ChungusMoves,3)) 
instance_create_layer(137+movegap*4,997,"moves",ds_list_find_value(global.ChungusMoves,4)) 
instance_create_layer(137+movegap*5,997,"moves",ds_list_find_value(global.ChungusMoves,5)) 
instance_create_layer(137+movegap*6,997,"moves",ds_list_find_value(global.ChungusMoves,6)) 