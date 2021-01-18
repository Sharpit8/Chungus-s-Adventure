if states=states.Chungus_BasicAttack and sprite_index=s_Chungus_BasicAttack
{states=states.Chungus_Return once=0 once2=0 once3=0}

if states=states.Chungus_HaymakerSlashes and sprite_index=s_Chungus_HaymakerSlashes
{once=0 once2=0 once3=0 once4=0
attacktimes=attacktimes+1
if attacktimes>=2
{states=states.Chungus_Return attacktimes=0}

}

if sprite_index=s_Chungus_Duck
{sprite_index=s_Chungus_Idle}

if sprite_index=s_Chungus_Block
{image_speed=0}