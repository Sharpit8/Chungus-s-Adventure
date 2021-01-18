if states=states.Bagaden_BasicAttack and sprite_index=s_Bagaden_FrontAxeSwing or states=states.Bagaden_AxeSpike and sprite_index=s_Bagaden_FrontAxeSpike or states=states.Bagaden_AxeJump and sprite_index=s_Bagaden_AxeJump
{ once=0 once2=0 once3=0 once4=0

attacktimes=attacktimes+1

var random_ = irandom_range(1,3)

if random_<=2 and attacktimes<3 and global.turnround<6
{states=states.Bagaden_BasicAttack}

if random_=3 and attacktimes<3 and global.turnround<6
{states=states.Bagaden_AxeSpike}

if random_=1 and attacktimes<4 and global.turnround>=6
{states=states.Bagaden_AxeJump}

if random_=2 and attacktimes<4 and global.turnround>=6
{states=states.Bagaden_BasicAttack}

if random_=3 and attacktimes<4 and global.turnround>=6
{states=states.Bagaden_AxeSpike}

if attacktimes>=3
{attacktimes=0 states=states.Bagaden_Return}


 
}

