if states=states.AxeMan_Charge and sprite_index=s_AxeMan_ChargeEnd and speed<=0
{ once=0 once2=0 once3=0 once4=0

 states=states.AxeMan_BasicAttack}

if states=states.AxeMan_BasicAttack and sprite_index=s_AxeMan_attack
{attacktimes=attacktimes+1 once=0 once2=0 once3=0 once4=0

if attacktimes=2
{attacktimes=0 states=states.AxeMan_Return}}