
if global.turning=-1 and ds_list_find_value(global.turnorder,global.turnturn) = o_Bison and !instance_exists(o_textbox) and !instance_exists(o_RoomIn)
{
//Turn Start



if taunt>0
{taunt=taunt-1}






}


if taunt>0 and tauntonce=0
{tauntonce=1 ds_list_add(Effects,s_SymbolTaunt)}

if taunt<=0 and tauntonce=1
{tauntonce=0 ds_list_delete(Effects,ds_list_find_index(Effects,s_SymbolTaunt))}

