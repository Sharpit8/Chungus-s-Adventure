


switch (states)
{
	case states.AxeMan_Idle: sc_AxeMan_Idle(); break;
	case states.AxeMan_BasicAttack: sc_AxeMan_BasicAttack(); break;
	case states.AxeMan_Return: sc_AxeMan_Return(); break;
	case states.AxeMan_Charge: sc_AxeMan_Charge(); break;
}


sc_CreatureStep()
	
if global.turning=-1 and ds_list_find_value(global.turnorder,global.turnturn) = me and !instance_exists(o_textbox)
{global.turnturn=global.turnturn + 1 turnnow=1 turn=0 global.turning=me 
	states=states.AxeMan_Charge}


if hoveronce=0 and (position_meeting(mouse_x, mouse_y, id)) and global.selection=-2 and hp>0
{audio_play_sound(so_HoverAttack,0,0) hoveronce=1}

if !(position_meeting(mouse_x, mouse_y, id))
{hoveronce=0}

if hp<=0 and room=r_AxeManLevel1
{ds_list_delete(global.turnorder,ds_list_find_index(global.turnorder,me))
	
global.AxeManLevel1=1
global.roomgoto=r_WorldMap1

instance_create_layer(x,y,"RoomTransistion",o_RoomOut)
	
	}
	
		if hp<=0 and room=r_AxeManLevel3
{ds_list_delete(global.turnorder,ds_list_find_index(global.turnorder,me))}

if room=r_AxeManLevel3
{

if hp<=0 and o_HachetMan.hp<=0
{global.AxeManLevel3=1
global.roomgoto=r_WorldMap1

instance_create_layer(x,y,"RoomTransistion",o_RoomOut)}
	
	
	
}
	