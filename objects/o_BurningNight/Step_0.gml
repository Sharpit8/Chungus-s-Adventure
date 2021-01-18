

burndelay=burndelay-1


if burndelay=0
{audio_play_sound(so_Burning,0,1)}

//if (floor(image_index)>=23) and once=0
//{once=1 audio_play_sound(so_Hit,0,0)}

if !instance_exists(o_textbox) and !instance_exists(o_RoomOutBlack)
{
		global.roomgoto=r_WorldMap1

instance_create_layer(x,y,"RoomTransistion",o_RoomOutBlack)
}