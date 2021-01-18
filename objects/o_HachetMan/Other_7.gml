if states=states.HachetMan_HachetAttack and sprite_index=s_HachetMan_HachetAttack or states=states.HachetMan_DoubleHachetAttack and sprite_index=s_HachetMan_DoubleHachetAttack
{ once=0 once2=0 once3=0 once4=0

attacktimes=attacktimes+1

var random_ = irandom_range(1,2)

if random_=1 and attacktimes<3
{states=states.HachetMan_HachetAttack}

if random_=2 and attacktimes<3
{states=states.HachetMan_DoubleHachetAttack}

if attacktimes>=3
{attacktimes=0 states=states.HachetMan_Return}


 
}

