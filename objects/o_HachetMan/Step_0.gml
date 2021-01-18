


switch (states)
{
	case states.HachetMan_Idle: sc_HachetMan_Idle(); break;
	case states.HachetMan_HachetAttack: sc_HachetMan_HachetAttack(); break;
	case states.HachetMan_Return: sc_HachetMan_Return(); break;
	case states.HachetMan_DoubleHachetAttack: sc_HachetMan_DoubleHachetAttack(); break;
}


sc_CreatureStep()
	
if global.turning=-1 and ds_list_find_value(global.turnorder,global.turnturn) = me and !instance_exists(o_textbox)
{global.turnturn=global.turnturn + 1 turnnow=1 turn=0 global.turning=me 
var random_ = irandom_range(1,2)

if random_=1
{states=states.HachetMan_HachetAttack}

if random_=2
{states=states.HachetMan_DoubleHachetAttack}}


if hoveronce=0 and (position_meeting(mouse_x, mouse_y, id)) and global.selection=-2 and hp>0
{audio_play_sound(so_HoverAttack,0,0) hoveronce=1}

if !(position_meeting(mouse_x, mouse_y, id))
{hoveronce=0}

if hp<=0 and room=r_AxeManLevel2
{ds_list_delete(global.turnorder,ds_list_find_index(global.turnorder,me))
	
global.AxeManLevel2=1
global.roomgoto=r_WorldMap1

instance_create_layer(x,y,"RoomTransistion",o_RoomOut)
	
	}
	
	if hp<=0 and room=r_AxeManLevel3
{ds_list_delete(global.turnorder,ds_list_find_index(global.turnorder,me))}