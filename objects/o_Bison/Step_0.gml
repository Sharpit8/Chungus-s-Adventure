switch (states)
{
	case states.Bison_Idle: sc_Bison_Idle(); break;
	case states.Bison_BasicAttack: sc_Bison_BasicAttack(); break;
	case states.Bison_Return: sc_Bison_Return(); break;
}

if stamina>staminamax
{stamina=staminamax}

if stamina<0
{stamina=0}



blocktimer=blocktimer-1

sc_CreatureStep()

if global.turning=-1 and ds_list_find_value(global.turnorder,global.turnturn) = o_Bison and !instance_exists(o_textbox) and !instance_exists(o_RoomIn)
{stamina=stamina+10 global.turnturn=global.turnturn + 1 turnnow=1 turn=0 global.turning=o_Bison
	
	with instance_create_layer(x,y,"DamageText",o_HealText)
	{damage=10}
	
	
if instance_exists(o_PrinceChungus)
{ if o_PrinceChungus.hp<=0
	{sc_ChungusTextLines()}

}

	}
	



if hp<=0
{ds_list_delete(global.turnorder,ds_list_find_index(global.turnorder,me))}

hpgaintimer=hpgaintimer-1
if hpgaintimer<=0
{hpgain=0}

if hp>maxhp
{hp=maxhp}




